class MovieEntry < ActiveRecord::Base
  belongs_to :movie
  belongs_to :user

  scope :only_movies_rated, -> {where.not(user_rating: 'null')}
  scope :with_rating, ->(){
    joins(%{
      LEFT JOIN movie_entries
      ON movies.id = movie_entries.movie_id
      AND movie_entries.user_rating != 'null'
    }).
    select(%{
           movies.id, movies.title, movies.tomato_meter,
                     avg(abs(movies.tomato_meter - movie_entries.user_rating)) rating
    }).
    group("movies.id, movies.title, movies.tomato_meter").
    order("avg(abs(movie.tomato_meter - movie_entries.user_rating)) desc")
  }
  scope :filtered_multi, -> (params) {
    q = scoped
    if params.has_key?(:seen)
      q = q.where(seen: true)
    end
    if params.has_key?(:own)
      q = q.where(own: true)
    end
    if params.has_key?(:wishlist_see)
      q = q.where(wishlist_see: true)
    end
    q
  }
end