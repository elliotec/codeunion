require "test_helper"

feature "search" do
  scenario "user can search" do
    sign_in_user
    visit "/"
    fill_in "search", with: "Rails", :match => :prefer_exact
    click_on "    ", :match => :prefer_exact
    page.text.must_include "RAILS GUIDES"
  end
end
