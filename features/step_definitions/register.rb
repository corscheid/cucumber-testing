Given(/^I am on the "Volunteer" page$/) do
  $browser.visit $home_url + '/p/volunteer.html'
end

Then(/^I should see the registration Google Form$/) do
  expect(page).to have_content 'Volunteer Registration Form'
end
