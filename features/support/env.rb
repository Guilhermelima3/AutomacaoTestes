require "allure-cucumber"
require "capybara"
require "capybara/cucumber"

require_relative "helper"

World(Helpers)

Capybara.configure do |config|
  #selenium Driver
  config.default_driver = :selenium_chrome
  #time exec
  config.default_max_wait_time = 10
end
