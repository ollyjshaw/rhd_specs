require 'capybara'
require 'capybara/cucumber'
require 'capybara/poltergeist'

Capybara.javascript_driver = :poltergeist

Capybara.configure do |config|
  config.app_host   = 'http://www.google.com'
end

Capybara.register_driver :poltergeist do |app|
    Capybara::Poltergeist::Driver.new(app, {:js_errors => false})
end
World(Capybara)
