require "test_helper"

feature "Creating a Resource" do
  scenario "a user can create a resource" do
    sign_in_user
    visit new_resource_path
    fill_in "Name", with: resources(:codefellows).name
    fill_in "Body", with: resources(:codefellows).body
    click_on "New Resource"
    page.text.must_include "Resource was successfully created"
    page.text.must_include resources(:codefellows).name
    page.text.must_include resources(:codefellows).body
  end

  scenario "a moderator can create a resource" do
    sign_in_moderator
    visit new_resource_path
    fill_in "Name", with: resources(:codefellows).name
    fill_in "Body", with: resources(:codefellows).body
    click_on "New Resource"
    page.text.must_include "Resource was successfully created"
    page.text.must_include resources(:codefellows).name
    page.text.must_include resources(:codefellows).body
  end

  scenario "a not-signed in person can't see create resource button" do
    visit resources_path
    page.text.wont_include "New Resource"
  end

  scenario "a not-signed in person can't visit new resource path" do
  visit new_resource_path
  page.text.must_include "AccessDenied"
  end


end
