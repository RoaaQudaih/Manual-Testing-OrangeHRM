Feature: login page-login and access my acount

Scenario: #1- User successfully logs in and is redirected to the dashboard
  Given The user is on the login page   
  When The user enters correct uesrname 
  And The user enters correct password
  And Clicks the login button
  Then The system should redirected the user to the dashboard
  # priority: High , Severity: Major

  Scenario Outline: #2- Failed login with username <username> and password <password>
    Given The user is on the login page  
    When The user enters uesrname <username>
    And The user enters password <password>
    And Clicks the login button
    Then The system should given an error message and reset the field

  Examples:
      | username | password    |
      | "Admin"  | "admin111"  |
      |"Roaa"    | "roaa123"   |
      |"Roaa"    |"admin123"   |
    # priority: High , Severity: Major

  Scenario: #3- Check the required for the username field
    Given The user is on the login page    
    When The user leaves the username field empty
    And The user enters correct password
    And Clicks the login button
    Then The system should display required message for the username field
  # priority: Medium , Severity: minor

  Scenario: #4- Check the required for the password field
    Given The user is on the login page    
    When The user enters correct uesrname
    And The user leaves the password field empty
    And Clicks the login button
    Then The system should display required message for the password field
    # priority: Medium , Severity: minor 

  Scenario: #5- User need to reset password
    Given The user is on the login page
    When The user clicks on 'forget you password?' link 
    Then The system should redirected to the reset password page
    # priority: Medium , Severity: minor

    
  