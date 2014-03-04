require "test_helper"

feature "Creating a Language" do
  scenario "a language can be created" do
    visit new_language_path
    fill_in "Name", with: languages(:ruby).name
    fill_in "Description", with: languages(:ruby).description
    click_on "Create Language"
    page.text.must_include "Language was successfully created"
    page.text.must_include languages(:ruby).name
    page.text.must_include languages(:ruby).description
  end
end
