class MoviesController < ApplicationController

  def new
    @movie = @movie_entry.movies.new
  end

  # def create
  #   movie = @movie_entry.movie.new(movie_params)
  #   if @movie.save
  #     flash[:notice] = "Movie has been created."
  #     redirect_to [@movie_entry, @movie]
  #   else
  #     flash[:alert] = "Movie has not been created"
  #     render "new"
  #   end
  # end

private
  def set_movie_entry
    @movie_entry = MovieEntry.find(params[:movie_entry_id])
  end

#might need to go in movie entry controller
#   def set_movie
#     @movie = @movie_entry.movies.find(params[:id])
#   end

#   def movie_params
#     params.require(:movie).permit(:title)
#   end
# end
