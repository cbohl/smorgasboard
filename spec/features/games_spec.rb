require 'rails_helper'
RSpec.feature "User redirected to home page", type: :feature do
  scenario "when user clicks link with text SmorgasBoard" do
    visit '/games'
    click_link('SmorgasBoard')
    expect(current_path).to eq '/'
  end

  scenario "when user clicks link with text home" do
    visit '/games'
    click_link('Home')
    expect(current_path).to eq '/'
  end





end
