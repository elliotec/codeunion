require "test_helper"

feature "creating a comment" do
  scenario "user can create a comment" do
    sign_in_user
    visit languages_path
    click_on "Ruby"
    click_on "RAILS GUIDES"
    fill_in "Comment", with: "This is a comment."
    click_on "COMMENT"
    page.text.must_include "This is a comment."
  end
end
