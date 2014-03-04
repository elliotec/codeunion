ENV["RAILS_ENV"] = "test"
require File.expand_path("../../config/environment", __FILE__)
require "rails/test_help"
require "minitest/rails/capybara"
#require "minitest_helper"


# Uncomment for awesome colorful output
# require "minitest/pride"


class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.(yml|csv) for all tests in alphabetical order.
  fixtures :all
end

  def sign_in
    visit "/"
    click_on "Sign in"
    fill_in "Email", with: users(:one).email
    fill_in "Password", with: "password"
    click_button "Sign in"
  end
