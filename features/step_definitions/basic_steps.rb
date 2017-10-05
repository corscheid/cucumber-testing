Given('I am on the home page') do
  $browser.visit $home_url + '?m=0'
end

When(/^I click the "([^"]*)" link$/) do |text|
  link = $browser.find_link(text)
  $browser.visit link[:href]
end
