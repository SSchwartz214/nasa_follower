require 'rails_helper'

describe 'As a user' do
  it 'visits the home page' do
    visit '/'

    expect(page).to have_content("Nasa Follower")
  end
end
