class MoviesController < ApplicationController

  def new
    @movie = @movie_entry.movies.build
  end

  def create
    # @movie = current_movie_entry.movies.build(movie_params)
    # if @movie.save
    #   flash[:notice] = "Movie has been created."
    #   redirect_to [@movie_entry, @movie]
    # else
    #   flash[:alert] = "Movie has not been created"
    #   render "new"
    # end
  end

  def index
    @movie = Movie.all
  end

private
  def current_movie_entry
    @movie_entry = MovieEntry.find(params[:movie_entry_id])
  end

  def movie_params
    params.require(:movie).permit(:title)
  end
end
