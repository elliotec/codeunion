require "test_helper"

feature "creating a user account" do
  scenario "user creating an account" do
    visit root_path
    click_on "Sign up"
    fill_in "Email",  with: "email@email.com"
    fill_in "Password", with: "password"
    click_button "Sign up"
    page.text.must_include "Welcome! You have signed up successfully."
  end
end
