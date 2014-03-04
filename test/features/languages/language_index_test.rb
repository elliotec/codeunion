require "test_helper"

feature "language index" do
  scenario "visiting the language index page" do
    visit languages_path
    page.text.must_include languages(:ruby).name
    page.text.must_include languages(:ruby).description
  end
end
