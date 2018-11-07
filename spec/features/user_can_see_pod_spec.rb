require 'rails_helper'

feature "user can see NASA's POD" do

  scenario "user visits dashboard and sees NASA's POD" do
    PicOfDay.create(image_url: "https://via.placeholder.com/350x150")

    visit '/'

    expect(page).to have_css(".img-container")
  end
end