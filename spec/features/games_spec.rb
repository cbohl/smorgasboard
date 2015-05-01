require 'rails_helper'

RSpec.feature "User redirected to home page", type: :feature do
  let!(:user) { User.create!(name: "John", email: "jdees@gmail.com", username: "jdees", password: "password") }
  # scenario "when user clicks link with text SmorgasBoard from games index" do
  #   visit '/games'
  #   click_link('SmorgasBoard')
  #   expect(current_path).to eq '/'
  # end

  # scenario "when user clicks link with text home" do
  #   visit '/login'
  #   fill_in('Username', :with => user.username)
  #   fill_in('Password', :with => user.password)
  #   click_button('login')
  #   visit '/games'
  #   click_link('Home')
  #   expect(current_path).to eq '/'
  # end
end



RSpec.feature "User directed to appropriate game", type: :feature do
  let!(:user) { User.create!(name: "John", email: "jdees@gmail.com", username: "jdees", password: "password") }
  let! (:game) { Game.create(name: "Monopoly", description: "Really fun", min_number_of_players: 2, max_number_of_players: 4, min_duration_of_game: 90, max_duration_of_game: 180) }
  # scenario "when user clicks link for the first game on the list" do
  #   visit '/login'
  #   fill_in('Username', :with => user.username)
  #   fill_in('Password', :with => user.password)
  #   click_button('login')
  #   visit '/games'
  #   click_link('Monopoly')
  #   expect(current_path).to eq '/games/8'
  # end
end

RSpec.feature "User directed to appropriate tags show page", type: :feature do
  let!(:game) {Game.create!(name: "Monopoly Jr.", description: "Really really fun", min_number_of_players: 2, max_number_of_players: 4, min_duration_of_game: 90, max_duration_of_game: 180)}
  let!(:tag) {Tag.create!(name: "Great game", description: "This applies to all games with funny", category: "Build-mechanisms")}
  let(:tagging) {Tagging.create(game: game, tag: tag)}


  # scenario "when user clicks a tag on the game show page" do
  # puts "GAMES"
  # Game.all.each do |game_example|
  #   puts game_example.name
  # end

  # puts "TAG"
  # puts tagging.game.name
  # puts tagging.tag.name

  # puts "GAME TAG NAME"
  # game.tags.each do |tag2|
  #   puts tag2.name
  # end

  # puts "TAGS"
  # puts Tag.all
  #   visit '/games'
  #   click_link('Monopoly Jr.')

  #   click_link ('Great game')
  #   expect(current_path). to eq '/tags/1'
  # end
end


RSpec.feature "Game is added to the user's library", type: :feature do
  let!(:game) {Game.create!(name: "Monopoly Jr.", description: "Really really fun", min_number_of_players: 2, max_number_of_players: 4, min_duration_of_game: 90, max_duration_of_game: 180)}
  let!(:user) {User.create!(name: "John", email: "jdees@gmail.com", username: "jdees", password: "password")}

  scenario "when the user clicks the add game to library button on a game's show page" do
    visit '/login'
    fill_in('Username', :with => user.username)
    fill_in('Password', :with => user.password)
    click_button('login')

    visit "/games/1"
    click_button("Add game to library")

    expect(user.owned_games).to eq([game])
  end
end

RSpec.feature "Game is added to the user's library", type: :feature do
  # let!(:game) {Game.create!(name: "Monopoly Jr.", description: "Really really fun", min_number_of_players: 2, max_number_of_players: 4, min_duration_of_game: 90, max_duration_of_game: 180)}
  # let!(:user) {User.create!(name: "John", email: "jdees@gmail.com", username: "jdees", password: "password")}

  scenario "when the user clicks the add game to library button on a game's show page" do
    visit '/login'
    fill_in('Username', :with => user.username)
    fill_in('Password', :with => user.password)
    click_button('login')

    visit "/games/1"
    click_button("Add game to library")

    expect(user.owned_games).to eq([game])
  end
end


# Game is removed from the user's library
# when the user clicks the remove game library button on a game's show page
#     click_button("Remove owned game")

