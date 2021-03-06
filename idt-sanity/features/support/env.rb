require "capybara/cucumber"
require "selenium-cucumber"
require "rubygems"
require "appium_lib"
require "rspec"
require "capybara/poltergeist"
require "appium_capybara"
require "phantomjs"
require "test/unit/assertions"
require "logger"


# Capybara.run_server = false #not to start the local ruby server

Capybara.default_driver = :poltergeist

Capybara.javascript_driver = :poltergeist

Capybara.register_driver :poltergeist do |app|
  Capybara::Poltergeist::Driver.new(app, timeout: 60, js_errors: true)
end

# Capybara.current_driver = :poltergeist

