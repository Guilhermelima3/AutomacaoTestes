require "allure-cucumber"
require "capybara"
require "capybara/cucumber"

require_relative "helper"
require_relative "actions"

World(Helpers)
World(Actions)

Capybara.configure do |config|
  #selenium Driver
  config.default_driver = :selenium_chrome
  #time exec
  config.default_max_wait_time = 10
  config.app_host = "http://parodify.qaninja.com.br"
end

#Armazenando relatorios apenas dos ultimos testes rodados
AllureCucumber.configure do |config|
  config.results_directory = "/logs"
  config.clean_results_directory = true
end
