require "test_helper"

feature "signing in to an existing account" do
  scenario "exisiting user signing in" do
    visit "/"
    click_on "Sign in"
    fill_in "Email", with: users(:one).email
    fill_in "Password", with: "password"
    click_button "Sign in"
    page.text.must_include "Signed in successfully"

  end
end
