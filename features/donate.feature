Feature: visitor donates
    As a visitor
    I want to donate
    So that I can contribute funds to the organization
    Scenario: donate
        Given I have navigated to the “Give” page
        When I click the “Donate Securely Via PayPal, by clicking here” link
        Then I should be redirected to the organization’s PayPal donation form on PayPal website
        And the donation form should respond with HTTP 200 OK
