require "test_helper"

feature "Creating a Resource" do
  scenario "a resource can be created" do
    visit new_resource_path
    fill_in "Name", with: resources(:codefellows).name
    fill_in "Body", with: resources(:codefellows).body
    click_on "Create Resource"
    page.text.must_include "Resource was successfully created"
    page.text.must_include resources(:codefellows).name
    page.text.must_include resources(:codefellows).body
  end
end
