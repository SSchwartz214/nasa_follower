require 'rails_helper'

feature "user can see NASA's POD" do

  scenario "user visits dashboard and sees NASA's POD" do
    visit '/dashboard'

    expect(page).to have_css(".pod")
  end
end