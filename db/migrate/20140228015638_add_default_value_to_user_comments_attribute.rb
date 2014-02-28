class AddDefaultValueToUserCommentsAttribute < ActiveRecord::Migration
  def change
    change_column_default(:movie_entries, :user_comments, 'none')
  end
end
