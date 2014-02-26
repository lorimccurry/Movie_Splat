class AddUserIdToMovieEntries < ActiveRecord::Migration
  def change
    add_reference :movie_entries, :user, index: true
  end
end
