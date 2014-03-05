require "test_helper"

feature "creating a language" do
  scenario "moderator can create a language using button" do
    sign_in_moderator
    visit languages_path
    click_on "New Language"
    fill_in "Name", with: languages(:ruby).name
    click_on "Create Language"
    page.text.must_include "Language was successfully created"
    page.text.must_include languages(:ruby).name
  end

  scenario "moderator can create a language going to new language path" do
    sign_in_moderator
    visit new_language_path
    fill_in "Name", with: languages(:ruby).name
    click_on "Create Language"
    page.text.must_include "Language was successfully created"
    page.text.must_include languages(:ruby).name
  end

  scenario "user can't see create a language button" do
    sign_in_user
    visit languages_path
    page.text.wont_include "Create Languages"
  end

  scenario "user can't visit new language path" do
    sign_in_user
    visit new_language_path
    page.text.must_include "AccessDenied"
  end

  scenario "unlogged in person can't see create language button" do
    visit languages_path
    page.text.wont_include "Create Languages"
  end

  scenario "unlogged in person can't visit new language path" do
    visit new_language_path
    page.text.must_include "AccessDenied"
  end


end
