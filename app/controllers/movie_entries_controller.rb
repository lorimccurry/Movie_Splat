class MovieEntriesController < ApplicationController
  def home
  end

  def library
  end

  def create
    flash[:notice] = "Your movie has been added"
    redirect_to library_path
  end
end
