require 'rails_helper'

describe 'As a user' do
  it 'can search for relevant nasa data' do
    PicOfDay.create(image_url: "https://via.placeholder.com/350x150")

    visit '/'

    fill_in :q, with: "Apollo 11"

    click_on "Search"

    expect(current_path).to eq('/search')

    within('.nasa-search-results') do
      expect(page).to have_css('.title')
      expect(page).to have_css('.image')
      expect(page).to have_css('.description')
      expect(page).to have_css('.date')
    end

    within('.twitter-search-results') do
      expect(page).to have_css('.text')
    end
  end
end