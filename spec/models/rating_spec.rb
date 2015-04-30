require 'rails_helper'

describe Rating do
  let! (:user) { User.create(name: "Bob Jones", username: "bob3000", email: "bob@gmail.com", password: "lbla;jfa;") }
  let! (:game) { Game.create(name: "Monopoly", description: "Really fun", min_number_of_players: 2, max_number_of_players: 4, min_duration_of_game: 90, max_duration_of_game: 180) }
  let! (:rating) { Rating.create!(user: user, game: game, value: 1) }

  it "should belong to a User" do
    expect(rating.user).to eq(user)
  end

  it "should belong to a game" do
    expect(rating.game).to eq(game)
  end

end