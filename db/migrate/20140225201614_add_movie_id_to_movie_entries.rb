class AddMovieIdToMovieEntries < ActiveRecord::Migration
  def change
    add_reference :movie_entries, :movie, index: true
  end
end
