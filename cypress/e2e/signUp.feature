Feature: Myer Account sign up
  As a user
  I want to create a new account on the Myer website
  So that I can access Myer's features and services

  Scenario: Successful load registration form
    Given I am on the Myer registration page
    When I fill in the email input field with a valid email address
    And I click Join button
    Then I should see input field for password

  Scenario: Successful account creation
    Given I am on the Myer registration page
    When I fill in the email input field with a valid email address
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


  Scenario: Registration with invalid email address
    Given I am on the Myer registration page
    When I fill in the email input field with an invalid email address
    Then I should see an error message indicating invalid email address

  Scenario: Registration providing a invalid password
    Given I am on the Myer registration page
    When I fill in the email input field with a valid email address
    And I click Join button
    And I should see input field for password
    When I fill in the password input field with an invalid password
    Then I should see an error message indicating valid password is required

  Scenario: Registration with invalid First Name
    Given I am on the Myer registration page
    When I fill in the email input field with a valid email address
    And I click Join button
    And I should see input field for password
    And I fill in the password input field with a valid password
    And I fill in the first name input field with an invalid first name
    Then I should see an error message indicating invalid first name

  Scenario: Registration with invalid Last Name
    Given I am on the Myer registration page
    When I fill in the email input field with a valid email address
    And I click Join button
    And I should see input field for password
    And I fill in the password input field with a valid password
    And I fill in the first name input field with a valid first name
    And I fill in the last name input field with an invalid last name
    Then I should see an error message indicating invalid last name


  Scenario: Registration with invalid Mobile Phone Number
    Given I am on the Myer registration page
    When I fill in the email input field with a valid email address
    And I click Join button
    And I should see input field for password
    And I fill in the password input field with a valid password
    And I fill in the first name input field with a valid first name
    And I fill in the last name input field with a valid last name
    And I fill in the mobile phone input field with an invalid mobile phone number
    Then I should see an error message indicating invalid mobile phone number

  
  Scenario: Registration with invalid Date of Birth
    Given I am on the Myer registration page
    When I fill in the email input field with a valid email address
    And I click Join button
    And I should see input field for password
    And I fill in the password input field with a valid password
    And I fill in the first name input field with a valid first name
    And I fill in the last name input field with a valid last name
    And I fill in the mobile phone input field with a valid mobile phone number
    And I fill in the date of birth input field with an invalid date of birth
    Then I should see an error message : Please enter a valid birthday


  Scenario: Registration without entering address
    Given I am on the Myer registration page
    When I fill in the email input field with a valid email address
    And I click Join button
    And I should see input field for password
    And I fill in the password input field with a valid password
    And I fill in the first name input field with a valid first name
    And I fill in the last name input field with a valid last name
    And I fill in the mobile phone input field with a valid mobile phone number
    And I fill in the date of birth input field with a valid date of birth
    And I click the Create Account button without entering the address
    Then I should see an error message indicating that the address is required
