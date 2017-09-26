require 'capybara/poltergeist'
require 'capybara/cucumber'
require 'rspec/expectations'

# set up headless browser for testing
Capybara.register_driver(:poltergeist) { |app| Capybara::Poltergeist::Driver.new(app, js_errors: false) }
Capybara.default_driver = :poltergeist
Capybara.javascript_driver = :poltergeist
browser = Capybara.current_session

test_url = 'http://www.commongroundshreveport.com/p/volunteer.html'
register_url = 'https://docs.google.com/forms/d/e/1FAIpQLSdrOMBg80QiZMxj5Mk_v5Vj3YBcYIiiaqnPHaxDmrg1s8zf0g/viewform'

Given(/^I have navigated to the “Volunteer” page$/) do
  browser.visit test_url
end

When(/^I click the “Register to volunteer” link$/) do
  register_link = browser.find_link('Register to volunteer')
  register_link.click
  browser.visit register_url
end

Then(/^I should be redirected to the registration Google Form$/) do
  expect(browser.current_url).to eql register_url
end

Then(/^the registration Google Form should respond with HTTP 200$/) do
  expect(page.status_code).to eql 200
end
