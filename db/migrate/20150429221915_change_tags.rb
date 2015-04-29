class ChangeTags < ActiveRecord::Migration
  def change
    rename_column :tags, :time, :type
  end
end
