Feature: Volunteer signs in
  In order to sign in to an event
  As a volunteer
  I want to sign in

  Scenario: Sign in using link in sidebar
    Given I am on the home page
    When I click the "Sign In Here" link
    Then I should see the sign in Google Form

  Scenario: Sign in using link on volunteer page
    Given I am on the "Volunteer" page
    When I click the "Sign in" link
    Then I should see the sign in Google Form
