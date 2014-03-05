require "test_helper"

feature "signing in to an existing account" do
  scenario "exisiting user signing in" do
    sign_in_moderator
    page.text.must_include "Signed in successfully"

  end
end
