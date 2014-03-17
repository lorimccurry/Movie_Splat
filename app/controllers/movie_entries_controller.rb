class MovieEntriesController < ApplicationController
  def home
  end

  def index
    @movie_entries = current_user.movie_entries.filtered_multi(params)
  end

  def create
    @movie_entry = current_user.movie_entries.build(movie_entry_params)
    @movie = Movie.find_or_create_by_title(movie_params[:title].downcase.titleize)
    @movie_entry.movie = @movie
    if @movie_entry.save
      flash[:notice] = "Your movie entry has been saved"
      redirect_to movie_entries_path
    else
      flash[:alert] = "Your movie entry has not been saved. #{@movie_entry.errors.full_messages.join(". ")}"
      render new_movie_entry_path
    end
  end

  def new
    @movie_entry = current_user.movie_entries.new
    @movie = Movie.new
  end

  def edit
    @movie_entry = current_user.movie_entries.find(params[:id])
    @movie = @movie_entry.movie
  end

  def update
    movie_entry = current_user.movie_entries.find(params[:id])
    movie = Movie.find_or_create_by_title(movie_params[:title].downcase.titleize)
    movie_entry.movie = movie
    if movie_entry.update_attributes(movie_entry_params)
      flash[:notice] = "Your update has been saved"
      redirect_to movie_entries_path
      #might need to redirect_to movie_entry_path (the show), id: => movie_entry.id
    else
      flash[:alert] = "Your movie entry has not been saved. #{@movie_entry.errors.full_messages.join(". ")}"
      render edit_movie_entry_path
    end
  end

  def destroy
    movie_entry = current_user.movie_entries.find(params[:id]).destroy
    flash[:notice] = "Your movie has been deleted"
    redirect_to movie_entries_path
  end

  def show
    @movie_entry = current_user.movie_entries.find(params[:id])
    @movie = @movie_entry.movie
  end

  def splat
    @movie_entries = current_user.movie_entries.with_rating

    @user_rating_avg = @movie_entries.average('user_rating').to_i
    @critic_rating_avg = @movie_entries.average('tomato_meter').to_i
    @rating_diff_avg = (@user_rating_avg - @critic_rating_avg).abs

    if @rating_diff_avg < 15
      flash[:notice] = "Fresh! Quit your day job and move to Hollywood. Your average critic rating difference is #{@rating_diff_avg}."
    elsif @rating_diff_avg >= 15 && @rating_diff_avg < 40
      flash[:alert] = "Ripening! Eat more popcorn. Your average critic rating difference is #{@rating_diff_avg}."
    elsif @rating_diff_avg >= 40
      flash[:alert] = "Splat! Your taste sucks. Your average critic rating difference is #{@rating_diff_avg}."
    end
  end

private
  def movie_entry_params
    params.require(:movie_entry).permit(:seen, :own, :wishlist_see, :wishlist_own, :user_rating, :user_comments)
  end

  def movie_params
    params.require(:movie).permit(:title)
  end
end