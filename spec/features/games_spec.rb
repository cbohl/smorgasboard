require 'rails_helper'

RSpec.feature "User redirected to home page", type: :feature do
  let!(:user) { User.create!(name: "John", email: "jdees@gmail.com", username: "jdees", password: "password") }
  scenario "when user clicks link with text SmorgasBoard" do
    visit '/games'
    click_link('SmorgasBoard')
    expect(current_path).to eq '/'
  end

  scenario "when user clicks link with text home" do
    visit '/login'
    fill_in('Username', :with => user.username)
    fill_in('Password', :with => user.password)
    click_button('login')
    visit '/games'
    click_link('Home')
    expect(current_path).to eq '/'
  end
end

RSpec.feature "User directed to appropriate game", type: :feature do
  let!(:user) { User.create!(name: "John", email: "jdees@gmail.com", username: "jdees", password: "password") }
  let! (:game) { Game.create(name: "Monopoly", description: "Really fun", min_number_of_players: 2, max_number_of_players: 4, min_duration_of_game: 90, max_duration_of_game: 180) }
  scenario "when user clicks link for the first game on the list" do
    visit '/login'
    fill_in('Username', :with => user.username)
    fill_in('Password', :with => user.password)
    click_button('login')
    visit '/games'
    click_link('Monopoly')
    expect(current_path).to eq '/games/8'
  end
end
