require "test_helper"

feature "creating a language" do
  scenario "moderator can create a language using button" do
    sign_in(true)
    visit language_path
    click_on "New Language"
    fill_in "Name", with: languages(:ruby).name
    click_on "Create Language"
    page.text.must_include "Language successfully created"
    page.text.must_include languages(:ruby).name
  end

  scenario "moderator can create a language going to new language path" do
    sign_in(true)
  end

  scenario "user can't see create a language button" do
    sign_in(false)
  end

  scenario "user can't visit new language path" do
    sign_in(false)
  end

  scenario "unlogged in person can't see create language button" do
  end

  scenario "unlogged in person can't visit new language path" do
  end


end
