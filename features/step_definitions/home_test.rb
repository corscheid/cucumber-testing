Then('I should see the header image') do
  expect(page).to have_css 'img#Header1_headerimg'
end

Then(/^I should see "([^"]*)" in bold$/) do |text|
  expect(page).to have_selector 'b', text: text
end
