require 'rails_helper'
require 'spec_helper'

RSpec.feature "Games", type: :feature do
  context "when a user is not signed in" do
    scenario "when a user visits the log in page" do
      visit '/login'
      expect(page).to have_content("Log In")
    end
    scenario "when a user visits the log in page" do
      visit '/login'
      expect(page).to have_content("Sign Up")
    end
    scenario "when a user visits the home page" do
      visit '/'
      expect(current_path).to eq '/login'
    end
    scenario "when a user visits the games index" do
      visit '/games'
      expect(current_path).to eq '/login'
    end
    scenario "when a user visits a game show page" do
      visit '/games/1'
      expect(current_path).to eq '/login'
    end
    scenario "when a user visits the users index" do
      visit '/users'
      expect(current_path).to eq '/login'
    end
    scenario "when a user visits a user show page" do
      visit '/users/1'
      expect(current_path).to eq '/login'
    end
    scenario "when a user visits the tags index" do
      visit '/tags'
      expect(current_path).to eq '/login'
    end
    scenario "when a user visits a tags show page" do
      visit '/tags/1'
      expect(current_path).to eq '/login'
    end
    scenario "when a user visits a new comment page" do
      visit '/games/1/comments/new'
      expect(current_path).to eq '/login'
    end
  end
end
