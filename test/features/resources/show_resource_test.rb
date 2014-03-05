require "test_helper"

feature "As the site visitor, I want to see a specific resource" do
  scenario "viewing a resource" do
    visit resource_path(resources(:codefellows))
    page.text.must_include "Edit"
  end
end
