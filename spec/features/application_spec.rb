require 'rails_helper'


RSpec.feature "User logging in", type: :feature do
  let!(:user) { User.create!(name: "John", email: "jdees@gmail.com", username: "jdees", password: "password") }
  scenario "when user enter valid credentials" do
    visit '/login'
    fill_in('Username', :with => user.username)
    fill_in('Password', :with => user.password)
    click_button('login')
    expect(page).to have_content("Welcome")
  end

  scenario "when user enter invalid credentials" do
    visit '/login'
    fill_in('Username', :with => "Porkchop")
    fill_in('Password', :with => "Sandwiches")
    click_button('login')
    expect(page).to have_content("invalid")
  end
end

RSpec.feature "User signing up", type: :feature do
  scenario "when user enter valid credentials" do
    visit '/users/new'

    fill_in('Name', :with => "boris")
    fill_in('Username', :with => "boris")
    fill_in('Email', :with => "boris@invincible.com")
    fill_in('Password', :with => "password")
    click_button('Create User')
    expect(page).to have_content("Welcome")
  end



  scenario "when user enter invalid credentials" do
    visit '/users/new'
    fill_in('Name', :with => "josh")
    fill_in('Username', :with => " ")
    fill_in('Email', :with => " ")
    fill_in('Password', :with => " ")
    click_button('Create User')
    expect(current_path).to eq('/users')
  end
end

RSpec.feature "Unauthenticated user redirected to login page", type: :feature do
  let! (:game) { Game.create(name: "Monopoly", description: "Really fun", min_number_of_players: 2, max_number_of_players: 4, min_duration_of_game: 90, max_duration_of_game: 180) }
  
  scenario "when user visits the games index" do
    visit '/games'
    expect(current_path).to eq '/'
  end
  scenario "when user visits a game show page" do
    visit '/games/1'
    expect(current_path).to eq '/'
  end
  scenario "when user visits the users index" do
    visit '/users'
    expect(current_path).to eq '/'
  end
  scenario "when user visits user show page" do
    visit '/users/1'
    expect(current_path).to eq '/'
  end
  scenario "when user visits the tags index" do
    visit '/tags'
    expect(current_path).to eq '/'
  end
  scenario "when user visits a tags show page" do
    visit '/tags/1'
    expect(current_path).to eq '/'
  end
end
