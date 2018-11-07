require 'rails_helper'

describe 'As a registered user' do
  it 'can favorite a picture of the day' do
    PicOfDay.create(image_url: "https://via.placeholder.com/350x150")
    user = create(:user)
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    visit '/'

    click_on "Add to Favorites"

    expect(current_path).to eq('/favorites')
  end

  it 'can remove a favorite' do
    PicOfDay.create(image_url: "https://via.placeholder.com/350x150")
    user = create(:user)
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    visit '/'

    click_on "Add to Favorites"

    expect(current_path).to eq('/favorites')

    visit '/'

    click_on "Remove from Favorites"

    expect(current_path).to eq('/')
  end
end