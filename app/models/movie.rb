require 'movie_fetcher'

class Movie < ActiveRecord::Base
  has_many :movie_entries
  validates :title, presence: true

 def self.find_or_create_by_title(title)
    title = title.downcase.titleize
    movie = Movie.find_by_title(title)
    if movie
      movie
    else
      # make api call and create movie into db
      omdb_movie_hash = MovieFetcher.omdb(title)
      movie_hash = rename_movie_keys(omdb_movie_hash)
      movie = Movie.create(movie_hash)
    end
  end

  private

  def self.rename_movie_keys(hash)
    {title: hash["Title"], year: hash["Year"],
    rated: hash["Rated"], released: hash["Released"],
    runtime: hash["Runtime"], genre: hash["Genre"],
    director: hash["Director"], writer: hash["Writer"],
    actors: hash["Actors"], plot: hash["Plot"],
    poster: hash["Poster"], tomato_meter: hash["tomatoMeter"],
    tomato_image: hash["tomatoImage"],
    tomato_user_meter: hash["tomatoUserMeter"], dvd: hash["DVD"],
    box_office: hash["BoxOffice"], production: hash["Production"],
    tomato_reviews: hash["tomatoReviews"],
    tomato_fresh: hash["tomatoFresh"],
    tomato_rotten: hash["tomatoRotten"],
    tomato_user_reviews: hash["tomatoUserReviews"]
    }
  end
end