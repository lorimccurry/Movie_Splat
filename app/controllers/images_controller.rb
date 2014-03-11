class ImagesController < ApplicationController
  def show
    @movie = Movie.find(params[:movie_id])
    poster_response = Faraday.get(@movie.poster)

    send_data poster_response.body, {
      type: poster_response.headers["content-type"],
      disposition: :inline,
    }
  end
end
