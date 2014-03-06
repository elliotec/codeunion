require "test_helper"

feature "editing a language" do
  scenario "moderator can edit a langauge" do
    sign_in_moderator
    visit language_path(languages(:fortran))
    click_on "Edit"
    fill_in "Name", with: (languages(:js))
    click_on "Update Language"
    page.text.must_include "successfully updated"
    page.text.wont_include "fortran"

  end

  scenario "user can't see edit language button" do
    sign_in_user
    visit language_path(languages(:fortran))
    page.text.wont_include "Edit"
    page.text.must_include "fortran"

  end

  scenario "user can't visit edit language path" do
    sign_in_user
    visit edit_language_path(languages(:fortran))
    page.text.must_include "AccessDenied"

  end

  scenario "unsigned in can't see edit language button" do
    visit language_path(languages(:fortran))
    page.text.wont_include "Edit"
    page.text.must_include "fortran"
  end

  scenario "unsigned in can't visit edit language path" do
    visit edit_language_path(languages(:fortran))
    page.text.must_include "AccessDenied"
  end
end

