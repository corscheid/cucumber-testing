Feature: visitor registers
	As a visitor
	I want to register
	So that I can begin volunteering
	Scenario: begin registration
		Given I have navigated to the “Volunteer” page
		When I click the “Register to volunteer” link
		Then I should be redirected to the registration Google Form
		And the registration Google Form should respond with HTTP 200
