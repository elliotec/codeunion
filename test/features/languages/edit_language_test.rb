require "test_helper"

feature "editing a language" do
  scenario "a language can be edited from show page" do
    visit language_path(languages(:ruby))
    click_on "Edit"
    fill_in "Name", with: languages(:js).name
    fill_in "Description", with: languages(:js).description
    click_button "Update Language"
    page.wont_have_content languages(:ruby).name
    page.wont_have_content languages(:ruby).description
    page.text.must_include "Language was successfully updated"
    page.text.must_include languages(:js).name
    page.text.must_include languages(:js).description
  end
end
