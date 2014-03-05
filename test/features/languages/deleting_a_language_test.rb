require "test_helper"

feature "deleting a language" do
  scenario "moderator can delete a language" do
    visit language_path(1)
    click_on "Delete"
  end

  scenario "user can't see delete langauge button" do

  end

  scenario "unsigned in person can't see delete language button" do

  end
end
