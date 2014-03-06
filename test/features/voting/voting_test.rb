require "test_helper"

feature "upvoting" do
  scenario "moderators can vote" do
    visit language_path languages(:fortran)
    find(page.first("span#arrow_resource")).click

  end

  scenario "users can vote" do
  end

  scenario "unsigned in person can't vote" do
  end

  scenario "vote count goes up when clicked" do
  end

end
