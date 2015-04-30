class ChangeTags < ActiveRecord::Migration
  def change
    rename_column :tags, :time, :category
  end
end
