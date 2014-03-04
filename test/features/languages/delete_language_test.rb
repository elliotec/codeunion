require "test_helper"

feature "deleting a language" do
  scenario "a language can be deleted from index page" do
    visit languages_path
    within("div#service block")
    click_on "Delete"
    page.wont_have_content languages(:ruby).name
    page.text.must_include "Languages"
  end
end
