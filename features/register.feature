Feature: Visitor registers
	In order to begin volunteering
	As a visitor
	I want to register

	Scenario: Begin registration
		Given I am on the "Volunteer" page
		When I click the "Register to volunteer" link
		Then I should see the registration Google Form
