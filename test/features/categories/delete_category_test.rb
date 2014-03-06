require "test_helper"

feature "deleting a category" do
  scenario "moderator can delete a category" do
    sign_in_moderator
    visit category_path(categories(:book))
    click_on "Delete"
  end

  scenario "user can't see delete category button" do
    sign_in_user
    visit category_path(categories(:book))
    page.text.wont_include "Destroy"

  end

  scenario "unsigned in person can't see delete category button" do
    visit category_path(categories(:book))
    page.text.wont_include "Destroy"
  end
end
