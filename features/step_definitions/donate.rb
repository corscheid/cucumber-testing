Given(/^I am on the "Give" page$/) do
  $browser.visit($home_url + '/p/make-donation.html')
end

Then('I should see the donation form on PayPal') do
  expect(page).to have_selector 'h4', text: 'Donate to'
  expect(page).to have_selector 'h4', text: 'Common Ground Community, Inc.'
end
