class MovieEntriesController < ApplicationController
  before_action :find_movie

  def home
  end

  def index
    @movie_entries = MovieEntry.all
  end

  def create
    movie_entry = current_user.movie_entries.build(movie_entry_params)
    if movie_entry.save
      movie = Movie.find_or_create_by_title(movie_params[:title].downcase.titleize)
      movie_entry.movie = movie
      movie_entry.save
      flash[:notice] = "Your movie entry has been saved"
      redirect_to movie_entries_path
    else
      flash[:alert] = "Your movie entry has not been saved. #{@movie_entry.errors.full_messages.join(". ")}"
      render :index
    end
  end

  def new
    @movie_entry = MovieEntry.new
    @movie = Movie.new
  end

private
  def movie_entry_params
    params.require(:movie_entry).permit(:seen, :own, :wishlist_see, :wishlist_own, :user_rating, :user_comments)
  end

  def movie_params
    params.require(:movie).permit(:title)
  end

  def find_movie
  end
end
