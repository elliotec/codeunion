require "test_helper"

feature "visiting the resource index" do
  scenario "with existing resources" do
    visit resources_path

    page.text.must_include "Resources"
  end
end
