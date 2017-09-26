require 'rest-client'
require 'rspec/expectations'

test_url = "http://www.commongroundshreveport.com/"
response = nil

Given(/^I am not yet on the home page$/) do
end

When(/^I browse to the home page URL$/) do
  response = RestClient.get test_url
end

Then(/^the home page should respond with HTTP 200$/) do
  expect(response.code).to eql 200
end
