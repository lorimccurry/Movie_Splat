class MovieEntry < ActiveRecord::Base
  belongs_to :movie
  belongs_to :user
  accepts_nested_attributes_for :movies

end
