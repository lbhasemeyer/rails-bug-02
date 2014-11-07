require 'rails_helper'
require 'capybara/rails'

feature 'Registration' do

  scenario 'Users can register' do

    visit root_path
    click_on "Register"
    fill_in :Name, with: "test"
    fill_in :Email, with: "test@test.com"
    fill_in :Password, with: "testpassword"
    fill_in :Confirm, with: "testpassword"

    click_button "Register"

  expect(page).to have_no_content("Login")

  end

end
