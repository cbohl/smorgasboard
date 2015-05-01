class ChangeRatings < ActiveRecord::Migration
  def change
    rename_column :ratings, :value, :score
  end
end
