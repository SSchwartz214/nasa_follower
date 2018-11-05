require 'rails_helper'

describe 'As a user' do
  it 'can search for relevant nasa data' do
    visit '/dashboard'

    fill_in :q, with: "Apollo 11"

    click_on "Search"

    expect(current_path).to eq('/search')

    within('.title') do
      expect(page).to have_content('Search Results for Apollo 11')
    end
  end
end