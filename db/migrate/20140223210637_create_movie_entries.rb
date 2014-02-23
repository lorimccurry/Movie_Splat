class CreateMovieEntries < ActiveRecord::Migration
  def change
    create_table :movie_entries do |t|
      t.boolean :seen
      t.boolean :own
      t.boolean :wishlist_see
      t.boolean :wishlist_own
      t.integer :user_rating

      t.timestamps
    end
  end
end
