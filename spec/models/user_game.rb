require 'rails_helper'

describe UserGame do
  let! (:game) { Game.create(name: "Monopoly", description: "Really fun", min_number_of_players: 2, max_number_of_players: 4, min_duration_of_game: 90, max_duration_of_game: 180) }
  let! (:user) { User.create(name: "Bob Jones", username: "bob3000", email: "bob@gmail.com", password: "lbla;jfa;") }
  let! (:user_game) { UserGame.create!(game: game, user: user) }

  it "should belong to a user" do
    expect(user_game.user).to eq(user)
  end

  it "should belong to a game" do
    expect(user_game.game).to eq(game)
  end

end