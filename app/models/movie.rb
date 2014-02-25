class Movie < ActiveRecord::Base
  has_many :movie_entries
end
