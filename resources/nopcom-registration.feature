Feature: Nopcommerce Registration
  As a user
  I want to check the Register functionality for nopcommerce

  Background: I am on nopcommerce registration page
    Given I open the Google Chrome browser
    When I open the URL https://demo.nopcommerce.com/register
    Then I am on nopcommerce registration page

  Scenario Outline: I should not be able to register with invalid data
  on mandatory field (*) of registration page
    When I enter first name "<First Name>"
    And I enter last name "<Last Name>"
    And I enter email address "<Email>"
    And I enter password"<Password>"
    And I enter confirm password"<Confirm Password>"
    And Click on Register button
    Then I can see an error message"<error message>"
    And I am not able to register

    Examples:
      | First Name | Last Name | Email                | Password | Confirm Password | error message                              |
      | ""         | Smith     | john.smith@gmail.com | Smith123 | Smith123         | Please enter first name                    |
      | John       | ""        | john.smith@gmail.com | Smith123 | Smith123         | Please enter last name                     |
      | John       | Smith     | ""                   | Smith123 | Smith123         | Please enter valid email                   |
      | John       | Smith     | john.smith@gmail.com | ""       | Smith123         | Password is required                       |
      | John       | Smith     | john.smith@gmail.com | Smith123 | ""               | Confirm Password is required               |
      | John       | Smith     | john.smith@gmail.com | Smith123 | Smith321         | Password and confirm password do not match |
      | John       | Smith     | john.smith@gmail.com | S123     | ""               | Minimum 6 character password is required   |
      | ""         | ""        | ""                   | ""       | ""               | Mandatory field (*) is required            |

  Scenario: I should be able to select any one radio button from Gender label of Your Personal Details section
    Given I am on Gender label of Your Personal Details section
    When I select "Male" radio button
    And I select "Female" radio button
    Then I am able to select any one of the radio button

  Scenario Outline: I should be able to select DAy, Month and Year from drop down list of Date of Birth field
    Given I am on Date of Birth field of Your Personal Details section
    When I select "<Day>"
    And I select "<Month>"
    And I select "<Year>"
    Then I am able to select Day, Month and Year from drop down list
    Examples:
      | Day | Month    | Year |
      | 11  | November | 1989 |

  Scenario: I should be able to check and uncheck the newsletter box on Options selection
    Given I am on Newsletter label on Options selection
    When I click on Newsletter checkbox
    Then I am able to check and uncheck the box next to Newsletter label

  Scenario: I should be able to register with valid mandatory (*) field data on registration page
    When I enter first name "John"
    And I enter last name "Smith"
    And I enter email "john.smith@gmail.com"
    And I enter password "smith123"
    And I enter confirm password "smith123"
    And I click on Register button
    Then I am able to register successfully
