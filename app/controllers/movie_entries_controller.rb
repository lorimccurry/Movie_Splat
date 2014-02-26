class MovieEntriesController < ApplicationController
  def home
  end

  def library
  end

  def create
    flash[:notice] = "Your movie has been added"
    redirect_to library_path
  end

  def new
    @movie_entry = MovieEntry.new
  end
end
