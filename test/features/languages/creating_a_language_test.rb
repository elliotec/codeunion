require "test_helper"

feature "Creating a Resource" do
  scenario "a resource can be created" do
    visit new_resource_path
    fill_in "Name", with: resource(:ruby).name
    fill_in "Description", with: resource(:ruby).description
    click_on "Create Resource"
    page.text.must_include "Resource was successfully created"
    page.text.must_include resource(:ruby).name
    page.text.must_include resource(:ruby).description
  end
end
