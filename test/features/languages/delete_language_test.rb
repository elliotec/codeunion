require "test_helper"

feature "deleting a language" do
  scenario "a language can be deleted from index page" do
    visit language_path(languages(:ruby))
    first(:link, "Delete").click
    save_and_open_page
    page.wont_have_content "Ruby"
    page.text.must_include "Languages"
  end
end
