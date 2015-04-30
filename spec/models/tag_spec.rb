require 'rails_helper'

describe Tag do
  let! (:game_1) { Game.create(name: "Monopoly", description: "Really fun", min_number_of_players: 2, max_number_of_players: 4, min_duration_of_game: 90, max_duration_of_game: 180) }
  let! (:game_2) { Game.create(name: "Risk", description: "Really fun", min_number_of_players: 2, max_number_of_players: 4, min_duration_of_game: 90, max_duration_of_game: 180) }
  let! (:tagging_1) { Tagging.create!(game: game_1, tag: tag) }
  let! (:tagging_2) { Tagging.create!(game: game_2, tag: tag) }
  let! (:tag) {Tag.create!(name: "Board Games", description: "Type")}

  it "should have many Taggings" do
    expect(tag.taggings).to eq([tagging_1, tagging_2])
  end

  it "should have many Tagged Games" do
    expect(tag.tagged_games).to eq([game_1, game_2])
  end

end
