require File.expand_path('../boot', __FILE__)

require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "sprockets/railtie"

Bundler.require(:default, Rails.env)

module Codeunion
  class Application < Rails::Application
    I18n.enforce_available_locales = false
  end
end
