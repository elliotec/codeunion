require "test_helper"

feature "As the site visitor, I want to see a specific resource" do
  scenario "viewing a resource" do
    visit resource_path(resources(:codefellows))
    save_and_open_page
    page.text.must_include resources(:codefellows).name
    page.text.must_include resources(:codefellows).body
    page.text.must_include resources(:codefellows).category.name
    page.text.must_include resources(:codefellows).language.name
  end
end
