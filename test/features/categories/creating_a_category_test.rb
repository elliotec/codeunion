require "test_helper"

feature "creating a category" do
  scenario "moderator can create a category" do
    sign_in_moderator
    visit categories_path
    click_on "New Category"
    fill_in "Name", with: categories(:book).name
    click_on "Create Category"
    page.text.must_include "Category was successfully created"
    page.text.must_include categories(:book).name
  end

  scenario "user can't see create category button" do
    sign_in_user
    visit categories_path
    page.text.wont_include "Create Category"
  end

  scenario "user can't visit new category path" do
    sign_in_user
    visit new_category_path
    page.text.must_include "AccessDenied"
  end

  scenario "unsigned in person can't see create category button" do
    visit languages_path
    page.text.wont_include "Create Languages"
  end

  scenario "unsigned in person can't visit new category path" do
    visit new_language_path
    page.text.must_include "AccessDenied"
  end

end
