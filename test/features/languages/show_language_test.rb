require "test_helper"

feature "viewing a language" do
  scenario "anyone visits language show page" do
    visit language_path(languages(:fortran))
    page.text.must_include languages(:fortran).name
  end
end
