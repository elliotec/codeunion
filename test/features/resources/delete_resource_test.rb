require "test_helper"

feature "deleting a resource" do
  scenario "a resource can be deleted from show page" do
    sign_in_moderator
    visit resource_path(resources(:poodr))
    click_on "Destroy"
    page.wont_have_content "book"
    page.text.must_include "Resources"
  end
end
