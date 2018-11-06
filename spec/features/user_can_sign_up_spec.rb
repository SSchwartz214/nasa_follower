require 'rails_helper'

describe 'as a visitor' do
  it "can create an account" do
    visit '/'

    click_on "Sign up"

    expect(current_path).to eq('/users/sign_up')

    fill_in :Email, with: "seth@gmail.com"
    fill_in :Password, with: "password"
    # fill_in :password_confirmation, with: "password"

    within('.actions') do
      click_on "Sign up"
    end

    expect(current_path).to eq('/users')
  end
end

# As a visitor
# When I visit '/'
# and I can click a link that says "Sign Up"
# and I can enter registration details in a form
# and submit that form
# Then I should be redirected to the dashboard and see a welcome message with my username
# and my user details have been saved in the database.