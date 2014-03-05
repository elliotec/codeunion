require "test_helper"

feature "deleting a language" do
  scenario "moderator can delete a language" do
    sign_in_moderator
    visit language_path(languages(:ruby))
    click_on "Destroy"
  end

  scenario "user can't see delete langauge button" do
    sign_in_user
    visit language_path(languages(:ruby))
    page.text.wont_include "Destroy"

  end

  scenario "unsigned in person can't see delete language button" do
    visit language_path(languages(:ruby))
    page.text.wont_include "Destroy"
  end
end
