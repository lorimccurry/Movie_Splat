class ChangeDvdColumnToLowercase < ActiveRecord::Migration
  def change
    rename_column :movies, :DVD, :dvd
  end
end
