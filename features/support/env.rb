require 'capybara'
require 'capybara/cucumber'
require 'capybara/poltergeist'

Capybara.javascript_driver = :poltergeist

Capybara.configure do |config|
  #TODO these need to be configured externally
  #config.app_host   = 'http://docker:32768'
  config.app_host   = 'https://developers.redhat.com/'
end

Capybara.register_driver :poltergeist do |app|
    Capybara::Poltergeist::Driver.new(app, {:js_errors => false})
end
World(Capybara)
