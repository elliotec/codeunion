require "test_helper"

feature "showing a single language" do
  scenario "user visits single language page" do
    visit language_path(languages(:ruby))
    page.text.must_include languages(:ruby).name
    page.text.must_include languages(:ruby).description
  end
end
