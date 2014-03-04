require "test_helper"

feature "deleting a language" do
  scenario "a language can be deleted from show page" do
    visit language_path(languages(:ruby))
    first(:link, "Delete").click
    page.wont_have_content "Ruby"
    page.text.must_include "Languages"
  end
end
