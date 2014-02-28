class MovieEntriesController < ApplicationController
  def home
  end

  def index
    @movie_entry = MovieEntry.all
  end

  def create
    @movie_entry = current_user.movie_entries.new(movie_entry_params)
    if @movie_entry.save
      flash[:notice] = "Your movie entry has been saved"
      redirect_to movie_entries_path
    else
      flash[:alert] = "Your movie entry has been saved. #{@squeek.errors.full_messages.join(". ")}"
      render :index
    end
  end

  def new
    @movie_entry = MovieEntry.new
  end

private
  def movie_entry_params
    params.require(:movie_entry).permit(:seen, :own, :wishlist_see, :wishlist_own, :user_rating, :user_comments)
  end
end
