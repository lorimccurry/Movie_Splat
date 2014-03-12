class MovieEntry < ActiveRecord::Base
  belongs_to :movie
  belongs_to :user

  scope :only_movies_rated, -> {where.not(user_rating: 'null')}
  scope :with_rating, ->(){
    joins(%{
      LEFT JOIN movies
      ON movie_entries.movie_id = movies.id
    })
    .where.not(user_rating: 'null')
    .select(%{
          movie_entries.*, movies.tomato_meter, movies.title,
            abs(movies.tomato_meter - movie_entries.user_rating) rating
    })
  }
  scope :filtered_multi, -> (params) {
    q = all
    if params.has_key?(:seen)
      q = q.where(seen: true)
    end
    if params.has_key?(:own)
      q = q.where(own: true)
    end
    if params.has_key?(:wishlist_see)
      q = q.where(wishlist_see: true)
    end
    if params.has_key?(:wishlist_own)
      q = q.where(wishlist_own: true)
    end
    if params.has_key?(:search)
      # movies = Movies.search(params[:search])
      q = joins(:movie).find(:all, :conditions => ['movies.title LIKE ?', "%#{params[:search]}%"])
    end
    q
  }

  def self.search(search)
    if search
      find(:all, :conditions => ['title LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end
end