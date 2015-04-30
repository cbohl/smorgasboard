require 'rails_helper'

describe "Comment" do
  let (:user) {User.create(name: "Bob Jones", username: "bob3000", email: "bob@gmail.com", password: "lbla;jfa;")}
  let (:game) {Game.create(name: "Monopoly", description: "Really fun", min_number_of_players: 2, max_number_of_players: 4, min_duration_of_game: 90, max_duration_of_game: 180)}
  let (:comment) {Comment.create(user: user, game: game, body: "fda;kslfja;lskfk;lasdfls;j;lak")}

  it "should belong to the appropriate user" do
    expect(comment.user).to eq(user)
  end

  it "should belong to the appropriate game" do
    expect(comment.game).to eq(game)
  end
end
