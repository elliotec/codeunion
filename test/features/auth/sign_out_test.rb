require "test_helper"

feature "signing out of a user account" do
  scenario "a user wants to sign out" do
    sign_in
    click_on "Log out"
    page.text.must_include "Signed out successfully"

  end
end
