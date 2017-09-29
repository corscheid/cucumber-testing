Feature: Visitor donates
  In order to contribute funds to the organization
  As a visitor
  I want to donate

  Scenario: Donate
    Given I am on the "Give" page
    When I click the "Donate Securely Via PayPal, by clicking here" link
    Then I should see the donation form on PayPal
