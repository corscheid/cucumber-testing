Feature: visitor visits home page
	In order to browse information
	As a visitor
	I want to visit the home page

	Scenario: View home page
		Given I am on the home page
		Then I should see the header image

	Scenario: Find welcome text
		Given I am on the home page
		Then I should see "Welcome to Common Ground Community!" in bold
