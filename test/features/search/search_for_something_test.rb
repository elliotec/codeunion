require "test_helper"

feature "search" do
  scenario "user can create a comment" do
    sign_in_user
    visit "/"
    fill_in "search", with: "Rails"
    click_on "    "
    page.text.must_include "RAILS GUIDES"
  end
end
