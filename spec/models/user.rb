require 'rails_helper'

describe "User" do
  let!(:user) {User.create(name: "Bob Jones", username: "bob3000", email: "bob@gmail.com", password: "lbla;jfa;")}

  let!(:game_1) {Game.create(name: "Monopoly", description: "Really fun", min_number_of_players: 2, max_number_of_players: 4, min_duration_of_game: 90, max_duration_of_game: 180)}
  let!(:game_2) {Game.create(name: "Risk", description: "Great", min_number_of_players: 2, max_number_of_players: 8, min_duration_of_game: 180, max_duration_of_game: 1000)}

  let!(:rating_1) {Rating.create(user: user, game: game_1, value: 8)}
  let!(:rating_2) {Rating.create(user: user, game: game_2, value: 9)}

  let!(:comment_1) {Comment.create(user: user, game: game_1, body: "fda;kslfja;lskfk;lasdfls;j;lak")}
  let!(:comment_2) {Comment.create(user: user, game: game_2, body: "puppydog")}

  let!(:usergame_1) {UserGame.create!(user: user, game: game_1)}
  let!(:usergame_2) {UserGame.create!(user: user, game: game_2)}


  it "should have many ratings" do
    expect(user.ratings).to eq([rating_1, rating_2])
  end

  it "should have many comments" do
    expect(user.comments).to eq([comment_1, comment_2])
  end

  it "should have many user_games" do
    expect(user.user_games).to eq([game_1, game_2])
  end

  it "should have many rated_games" do
    expect(user.rated_games).to eq([game_1, game_2])
  end

  # it "should have many commented_on_games" do
  #   expect(user.rated_games).to eq([game_1, game_2])
  # end

  it "should have many games" do
    expect(user.games).to eq([game_1, game_2])
  end

end
