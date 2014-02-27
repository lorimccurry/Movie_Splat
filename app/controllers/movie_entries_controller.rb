class MovieEntriesController < ApplicationController
  def home
  end

  def index
    @movie_entry = MovieEntry.all
  end

  def create
    movie_entry_params = params.require(:movie_entry).permit(:seen, :own, :wishlist_see, :wishlist_own, :user_rating, :user_comments)
    MovieEntry.create(movie_entry_params)
    flash[:notice] = "Your movie entry has been saved"
    redirect_to movie_entries_path
  end

  def new
    @movie_entry = MovieEntry.new
  end
end
