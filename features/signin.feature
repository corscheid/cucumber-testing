Feature: volunteer signs in
    As a volunteer
    I want to sign in
    So that I can sign in to an event
    Scenario: sign in using link in sidebar
        Given I have navigated to any page within the website
        When I click the “Sign in Here” link in the sidebar
        Then I should be redirected to the sign in Google Form
        And the sign in Google Form should respond with HTTP 200 OK
    Scenario: sign in using link on volunteer page
        Given I have navigated to the “Volunteer” page
        When I click the “Sign in” link in the content area
        Then I should be redirected to the sign in Google Form
        And the sign in Google Form should respond with HTTP 200 OK
