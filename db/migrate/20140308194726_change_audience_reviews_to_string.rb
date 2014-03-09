class ChangeAudienceReviewsToString < ActiveRecord::Migration
  def change
    change_column :movies, :tomato_user_reviews, :string
  end
end
