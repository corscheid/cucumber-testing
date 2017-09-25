Feature: visitor visits home page
	As a visitor
	I want to visit the home page
	So that I can browse information
	Scenario: load the home page
		Given I am not yet on the home page
		When I browse to the home page URL
		Then the home page should render
