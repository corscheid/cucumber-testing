require 'capybara/poltergeist'
require 'capybara/cucumber'
require 'rest-client'
require 'rspec/expectations'

# set up headless browser for testing
Capybara.register_driver(:poltergeist) { |app| Capybara::Poltergeist::Driver.new(app, js_errors: false) }
Capybara.default_driver = :poltergeist
Capybara.javascript_driver = :poltergeist

# some useful global variables
$browser = Capybara.current_session
$home_url = 'http://www.commongroundshreveport.com'
