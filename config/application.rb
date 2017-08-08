require_relative 'boot'

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "action_cable/engine"
require "sprockets/railtie"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module CapreseApi
  class Application < Rails::Application
    config.api_only = true
    config.middleware.insert_before 0, Rack::Cors do
      allow do
          origins 'localhost:3000'
          resource '*', headers: :any,
          methods: [:get, :put, :delete, :options, :patch, :head],
          expose: ['access-token', 'expiry', 'token-type', 'uid', 'client']
      end
    end
  end
end
