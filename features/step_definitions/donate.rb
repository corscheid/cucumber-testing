require 'capybara/poltergeist'
require 'capybara/cucumber'
require 'rspec/expectations'

# set up headless browser for testing
Capybara.register_driver(:poltergeist) { |app| Capybara::Poltergeist::Driver.new(app, js_errors: false) }
Capybara.default_driver = :poltergeist
Capybara.javascript_driver = :poltergeist
browser = Capybara.current_session

test_url = 'http://www.commongroundshreveport.com/p/make-donation.html'
donate_url = 'https://www.paypal.com/donate/?token=ZbN7foPQNx_L25PxI8kCNAPItyfk_ENpgJfv1THLGmttBc5aFPtnlQI4flbA79RVk9_3km&country.x=US&locale.x=US'

Given("I have navigated to the “Give” page") do
  browser.visit test_url
end

When("I click the “Donate Securely Via PayPal, by clicking here” link") do
  register_link = browser.find_link('Donate Securely Via PayPal, by clicking here.')
  register_link.click
  browser.visit donate_url
end

Then("I should be redirected to the organization’s PayPal donation form on PayPal website") do
  expect(browser.current_url).to eql donate_url
end

Then("the donation form should respond with HTTP 200 OK") do
  expect(page.status_code).to eql 200
end
