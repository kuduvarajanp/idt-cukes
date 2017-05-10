require "capybara/cucumber"
require "selenium-cucumber"
require "rubygems"
require "appium_lib"
require "rspec"
require "capybara/poltergeist"
require "appium_capybara"
require "phantomjs"
require "test/unit/assertions"


# Capybara.run_server = false #not to start the local ruby server

Capybara.default_driver = :poltergeist

Capybara.javascript_driver = :poltergeist

Capybara.register_driver :poltergeist do |app|
  Capybara::Poltergeist::Driver.new(app, {js_errors: false})
end

Capybara.current_driver = :poltergeist
