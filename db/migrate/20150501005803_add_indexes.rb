class AddIndexes < ActiveRecord::Migration
  def change
    add_index :ratings, :user_id
    add_index :ratings, :game_id
    add_index :comments, :user_id
    add_index :comments, :game_id
    add_index :user_games, :user_id
    add_index :user_games, :game_id
    add_index :taggings, :tag_id
    add_index :taggings, :game_id
  end
end
