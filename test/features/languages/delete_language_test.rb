require "test_helper"

feature "deleting a language" do
  scenario "a language can be deleted from index page" do
    visit languages_path
    first(:link, "Delete").click
    save_and_open_page
    page.wont_have_content languages(:ruby).name
    page.text.must_include "Languages"
  end
end
