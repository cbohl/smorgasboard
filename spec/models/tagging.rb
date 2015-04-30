require 'rails_helper'

describe Tagging do
  let! (:game) { Game.create(name: "Monopoly", description: "Really fun", min_number_of_players: 2, max_number_of_players: 4, min_duration_of_game: 90, max_duration_of_game: 180) }
  let! (:tag) { Tag.create!(name: "Board Games", description: "Type") }
  let! (:tagging) { Tagging.create!(game: game, tag: tag) }

  it "should have many Taggings" do
    expect(tagging.tag).to eq(tag)
  end

  it "should have many Tagged Games" do
    expect(tagging.game).to eq(game)
  end

end