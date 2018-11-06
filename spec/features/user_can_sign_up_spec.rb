require 'rails_helper'

describe 'as a visitor' do
  it "can create an account" do
    PicOfDay.create(image_url: "https://via.placeholder.com/350x150")

    visit '/'

    click_on "Sign up"

    expect(current_path).to eq('/users/sign_up')

    fill_in :Email, with: "seth@gmail.com"
    fill_in :Password, with: "password"

    within('.actions') do
      click_on "Sign up"
    end

    expect(current_path).to eq('/users')
  end
end