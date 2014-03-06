require "test_helper"

feature "editing a resource" do
  scenario "moderator can submit updates to existing resource" do
    sign_in_moderator
    visit resource_path(resources(:codefellows))
    click_on "Edit"
    fill_in "Body", with: "Becoming a Web Developer"
    click_on "Update Resource"
    page.text.must_include "successfully updated"
  end

  scenario "user can't see edit resource button" do
    sign_in_user
    visit resource_path(resources(:codefellows))
    page.text.must_include resources(:codefellows).name
    page.text.wont_include "Edit"
  end

  scenario "user can't visit edit resource path" do
    sign_in_user
    visit edit_resource_path(resources(:codefellows))
    page.text.must_include "AccessDenied"
  end

  scenario "unsigned in person can't see edit resource button" do
    visit resource_path(resources(:codefellows))
    page.text.must_include resources(:codefellows).name
    page.text.wont_include "Edit"
  end

  scenario "unsigned in person can't visit edit resource path" do
    visit edit_resource_path(resources(:codefellows))
    page.text.must_include "AccessDenied"
  end
end
