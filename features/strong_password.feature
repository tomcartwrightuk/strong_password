Feature: user enters a password

  As a user
  I want to enter a password
  So that I can have it scored

  Scenario: enter a password
    Given I run the cli with the password "aaaaaaaa"
    Then I should see "The score for your password is: 9"
