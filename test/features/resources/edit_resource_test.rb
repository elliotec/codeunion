require "test_helper"

feature "editing a resource" do
  scenario "moderator can submit updates to existing resource" do
    sign_in_moderator
    visit resource_path(resources(:codefellows))
    click_on "Edit"
    fill_in "Body", with: "Becoming a Web Developer"
    click_on "Update Resource"

    page.text.must_include "successfully updated"
    page.text.must_include "Web Developer"
  end
end
