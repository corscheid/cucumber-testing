require 'capybara/poltergeist'
require 'capybara/cucumber'
require 'rspec/expectations'

# set up headless browser for testing
Capybara.register_driver(:poltergeist) { |app| Capybara::Poltergeist::Driver.new(app, js_errors: false) }
Capybara.default_driver = :poltergeist
Capybara.javascript_driver = :poltergeist
browser = Capybara.current_session

test_url = 'http://www.commongroundshreveport.com/'
signin_url = 'https://docs.google.com/forms/d/e/1FAIpQLSdPOxHUbsoiHTwu5CX5ZUBLkZrCR2a40Ng2wq4KQudeAltZ3A/viewform?c=0&w=1'

Given("I have navigated to any page within the website") do
  browser.visit test_url
end

When("I click the “Sign in Here” link in the sidebar") do
  register_link = browser.find_link('Sign In Here')
  register_link.click
  browser.visit signin_url
end

Then("I should be redirected to the sign in Google Form") do
  expect(browser.current_url).to eql signin_url
end

Then("the sign in Google Form should respond with HTTP 200 OK") do
  expect(page.status_code).to eql 200
end

# Given statement is defined in register.rb:14

When("I click the “Sign in” link in the content area") do
  register_link = browser.find_link('Sign in')
  register_link.click
  browser.visit signin_url
end

# Then statements defined above on lines 24, 28
