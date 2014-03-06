require "test_helper"

feature "viewing a category" do
  scenario "anyone visits category show page" do
    visit category_path(categories(:book))
    page.text.must_include categories(:book).name
  end
end
