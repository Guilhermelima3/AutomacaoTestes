require "capybara"
require "capybara/cucumber"

require_relative "helper"

World(Helpers)

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
end
