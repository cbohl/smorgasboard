class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string  :name
      t.text    :description
      t.integer :min_number_of_players
      t.integer :max_number_of_players
      t.integer :min_duration_of_game
      t.integer :max_duration_of_game

      t.timestamps null: false
    end
  end
end
