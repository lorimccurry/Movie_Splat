class AddUserCommentsToMovieEntries < ActiveRecord::Migration
  def change
    add_column :movie_entries, :user_comments, :text
  end
end
