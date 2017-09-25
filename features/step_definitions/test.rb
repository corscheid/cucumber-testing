require 'selenium-webdriver'
require 'colorize'

browser = Selenium::WebDriver.for :firefox
test_url = "http://www.commongroundshreveport.com/"

Given(/^I am not yet on the home page$/) do
  browser.navigate.to 'http://www.example.com'
end

When(/^I browse to the home page URL$/) do
  browser.navigate.to test_url
end

Then(/^the home page should render$/) do
  begin
    element = browser.find_element(:class, 'post-body')
  rescue
    retry if element.nil?
  end
end
