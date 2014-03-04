require "test_helper"

<<<<<<< HEAD
feature "Creating a way" do
  scenario "a way can be created" do
    visit new_way_path
    fill_in "Name", with: ways(:mooc).name
    # select("ruby", :from => "way_Language:")
    # select("mooc", :from => "Category")
    click_on "Create Way"
    page.text.must_include "Way was successfully created"
    page.text.must_include ways(:mooc).name
  end
end
=======
# feature "Creating a way" do
#   scenario "a way can be created" do
#     visit new_language_way_path
#     fill_in "Name", with: ways(:mooc).name
#     select("ruby", :from => "way_Language:")
#     select("mooc", :from => "Category")
#     click_on "Create Way"
#     page.text.must_include "Way was successfully created"
#     page.text.must_include way(:mooc).name
#     page.text.must_include "Category: mooc"
#   end
# end
>>>>>>> e0c83b4d8ed9608fee8be36f401edce9e4c95342

