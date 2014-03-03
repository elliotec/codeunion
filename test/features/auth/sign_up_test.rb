require "test_helper"

feature "creating a user account" do
  scenario "user creating an account" do
    visit "/"
    click_on "Sign Up"
    fill_in "Email",  with: "email@email.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    click_on "Sign up"
    page.text.must_include "Welcome! You have signed up successfully"
  end
end
