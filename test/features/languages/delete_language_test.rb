require "test_helper"


feature "deleting a resource" do
  scenario "a resource can be deleted from index page" do
    visit resource_path(resources(:poodr))
    first(:link, "Delete").click
    save_and_open_page
    page.wont_have_content "book"
    page.text.must_include "resources"
  end
end
