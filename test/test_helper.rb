ENV["RAILS_ENV"] = "test"
require 'simplecov'
SimpleCov.start 'rails'
require File.expand_path("../../config/environment", __FILE__)
require "rails/test_help"
require "minitest/rails/capybara"

class ActiveSupport::TestCase
  fixtures :all
end

  def sign_in_moderator
    visit "/"
    click_on "Sign in", :match => :prefer_exact
    fill_in "Email", with: users(:moderator).email
    fill_in "Password", with: "password"
    click_button "Sign in"
  end

  def sign_in_user
    visit "/"
    click_on "Sign in", :match => :prefer_exact
    fill_in "Email", with: users(:user).email
    fill_in "Password", with: "password"
    click_button "Sign in"
  end
