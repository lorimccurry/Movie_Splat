class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :year
      t.string :rated
      t.string :released
      t.string :runtime
      t.string :genre
      t.text :director
      t.text :writer
      t.text :actors
      t.text :plot
      t.text :poster
      t.integer :tomato_meter
      t.string :tomato_image
      t.integer :tomato_user_meter
      t.string :DVD
      t.string :box_office
      t.string :production
      t.integer :tomato_reviews
      t.integer :tomato_fresh
      t.integer :tomato_rotten
      t.integer :tomato_user_reviews

      t.timestamps
    end
  end
end
