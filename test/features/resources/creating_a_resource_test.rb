require "test_helper"

feature "Creating a Resource" do
  scenario "a user can create a resource" do
    visit new_resource_path
    fill_in "Name", with: resources(:codefellows).name
    fill_in "Body", with: resources(:codefellows).body
    click_on "Create Resource"
    page.text.must_include "Resource was successfully created"
    page.text.must_include resources(:codefellows).name
    page.text.must_include resources(:codefellows).body
  end

  scenario "a moderator can create a resource" do
  end

  scenario "a user can create a resource" do
  end

  scenario "a not-signed in person can't see create resource button" do
  end

  scenario "a not-signed in person can't visit new resource path" do
  end


end
