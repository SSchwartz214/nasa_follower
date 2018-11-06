require 'rails_helper'

describe 'As a registered user' do
  it 'can favorite a picture of the day' do
    PicOfDay.create(image_url: "https://via.placeholder.com/350x150")

    visit '/'

    click_on "Add to Favorites"

    expect(current_path).to eq('/favorites')

    within('.container') do
      expect(page).to have_css('.picture')
    end
  end
end