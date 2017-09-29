Then("I should see the header image") do
  expect(page).to have_css "img#Header1_headerimg"
end

Then("I should see {string} in bold") do |string|
  expect(page).to have_selector 'b', text: string
end
