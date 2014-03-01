class Movie < ActiveRecord::Base
  has_many :movie_entries
  validates :title, presence: true

end
