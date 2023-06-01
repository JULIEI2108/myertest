Feature: Myer Account sign up
  As a user
  I want to create a new account on the Myer website
  So that I can access Myer's features and services

  Scenario: Successful load registration form
    Given I am on the Myer registration page
    When I fill in the email input field with valid email address
    And I click Join button
    Then I should see input field for password

  Scenario: Successful account creation
    Given I am on the Myer registration page
    When I fill in the email input field with valid email address
    And I click Join button
    And I should see input field for password
    When I fill in the password input field with a valid password
    And I fill in the first name input field with a valid first name
    And I fill in the last name input field with a valid last name
    And I fill in the mobile phone input field with a valid mobile phone number
    And I fill in the date of birth input field with a valid date of birth
    And I fill in the address input field with a valid address
    And I select the address from the suggested options
    And I click the Create Account button
    Then I should see a success message confirming the account creation