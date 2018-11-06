require 'rails_helper'

desribe 'as a visitor' do
  it "can create an account" do
    visit '/'

    click_on "Sign Up"

    fill_in :email, with: "seth@gmail.com"
    fill_in :password, with: "password"
    fill_in :password_confirmation, with: "password"

    click_on
  end
end

As a visitor
When I visit '/'
and I can click a link that says "Sign Up"
and I can enter registration details in a form
and submit that form
Then I should be redirected to the dashboard and see a welcome message with my username
and my user details have been saved in the database.