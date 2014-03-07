require 'faraday'
require 'json'

class MovieFetcher
  include Faraday

  def self.omdb(title)
    response = Faraday.get("http://www.omdbapi.com//?t=#{title}&tomatoes=true")
    # movie_titles.each do |title|
    #   response = Faraday.get("http://www.omdbapi.com//?t=#{title}&tomatoes=true")
    movie_json = response.body
    movie_hash = JSON.parse(movie_json)
  end
end