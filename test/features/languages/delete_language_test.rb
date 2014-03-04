require "test_helper"

feature "deleting a resource" do
  scenario "a resource can be deleted from index page" do
    visit resource_path(resources(:poodr))
    click_on "Delete"
    page.wont_have_content "book"
    page.text.must_include "resources"
  end
end
