Feature: Add user form-So I can access the application
  
  Scenario: #1- Verify Add button
    Given The user on admin page 
    When The user clicks on add button
    Then The system should redirected the user to the add form 
    # priority: High , Severity: Major
  
  Scenario: #2- Verify cancel button
    Given The user on the add form 
    When The user clicks on the cancel button
    Then The system should redirected the user to the admin page
    #priority: Medium , Severity:minor

  Scenario Outline: #3- Verify the validation for required fields
    Given The user on the add form   
    When The user enters <User Role>
    And The user enters <Employee Name>
    And The user enters <Status>
    And The user enters <Username>
    And The user enters <Password>
    And The user enters <Confirm Password>
    And Clicks the login button
    Then The system should display error message for required empty fields

  Examples:
      | User Role | Employee Name      |Status    |Username|Password  |Confirm Password|
      | "Admin"   | "Cecil  Bonaparte" |"Enabled" |"Roaa"  |"roaa1234"|""              |
      | "Admin"   | "Cecil  Bonaparte" |"Enabled" |""      |"roaa1234"|"roaa1234"      |
      | "Admin"   | ""                 |"Enabled" |"Roaa"  |"roaa1234"|"roaa1234"      |
      | ""        | "Cecil  Bonaparte" |"Enabled" |"Roaa"  |"roaa1234"|"roaa1234"      |
      | "Admin"   | "Cecil  Bonaparte" |    ""    |"Roaa"  |"roaa1234"|"roaa1234"      |
  #priority: High , Severity:minor

  Scenario: #4- Verify the user role drop-down field on the add form 
    Given The user on the add form 
    When The user clicks on the user role drop-down field  
    Then The user role drop-down field should clickable
    And Should display correct options"Admin & ESS"
     #priority: Medium , Severity:minor

  Scenario: #5- Verify select option from the user role drop-down field 
    Given The user on the add form 
    When The user clicks on the user role drop-down field   
    And  Select "Admin" option from the user role drop-down list  
    Then The selected option "Admin" should be displayed on the user role drop-down field 
    #priority: Medium , Severity:minor

  Scenario: #6- Verify select another option from the user role drop-down field 
    Given The user on the add form 
    And There is option on the user role drop-down field
    When The user clicks on the drop-down field
    And  Select "ESS" option from the user role drop-down list  
    Then The selected option "ESS" should be displayed on the user role drop-down field
    #priority: Medium , Severity:minor

  Scenario: #7- Verify the reset of user role drop-down field 
    Given The user on the add form 
    When The user clicks on "--select--" option from the user role drop-down field    
    Then The user role drop-down field should reset
    #priority: Medium , Severity:minor

  Scenario: #8- Verify the status drop-down field on the add form 
    Given The user on the add form 
    When The user clicks on the status drop-down field    
    Then The status drop-down field is clickable
    And Should display correct options "Enabled & Disabled"
    #priority: Medium , Severity:minor

  Scenario: #9- Verify select option from the status drop-down field 
    Given The user on the add form 
    When The user clicks on the status drop-down field  
    And  Select "Enabled" option from the status drop-down list  
    Then The selected option "Enabled" should be displayed on the user role drop-down field 
    #priority: Medium , Severity:minor

  Scenario: #10- Verify select another option from the status drop-down field 
    Given The user on the add form 
    And There is option on the status drop-down field
    When The user clicks on the drop-down field
    And  Select "Disabled" option from the status drop-down list  
    Then The selected option "Disabled" should be displayed on the status drop-down field
    #priority: Medium , Severity:minor

  Scenario: #11- Verify the reset of status drop-down field 
    Given The user on the add form 
    When The user clicks on "--select--" option from the status drop-down field  # I or user ?  
    Then The status drop-down field should reset
    #priority: Medium , Severity:minor

  Scenario: #12- verify the employee name field validation with invalid employee
    Given The user on the add form
    When The user enters invalid employee
    Then The system should reject the input
    And display invalid message
    #priority: Medium , Severity:minor

  Scenario: #13- User name length validation when the user name is too short  
    Given The user on the add form
    When The user enters a user name with length less than 5 characters
    Then The system should reject the input
    And display an error message explaining the user name requirements
    # priority: High , Severity: Medium

  Scenario: #14- User name length validation when the user name is too large  
    Given The user on the add form
    When The user enters a user name with length more than 40 characters
    Then The system should reject the input
    And Display an error message explaining the password requirements
    # priority: High , Severity: Medium

  Scenario: #15- User name length validation when the user name is within the valid length range
    Given The user on the add form
    When The user enters a user name with valid length between 5 and 40 characters 
    Then The system should accept the input
    # priority: Medium , Severity: minor

  Scenario: #16- Password length validation when it is too short  
    Given The user on the add form
    When The user enters a password with length less than 7 characters
    Then The system should reject the input
    And Display a message explaining the password requirements
    # priority: High , Severity: Medium

  Scenario: #17- Password length validation when it is too long   
    Given The user on the add form
    When The user enters a password with length more than 64 characters
    Then The system should reject the input
    And Display a message explaining the password requirements
    # priority: High , Severity: Medium  
  
  Scenario Outline: #18- Verify very weak password
    Given The user on the add form
    When The user enters a <password> within a valid length range
    Then The system should reject the input
    And Display a message explaining the password requirements
    Examples:
        |password    |
        |"roaaqudaih"|
        |"@#@#@#@#@#"|
        |"1234567890"|

    # priority: Medium , Severity: minor

  Scenario: #19- Verify strong password  
    Given The user on the add form
    When The user enters a password within a valid length range with letter, numbers and symbols
    Then The system should accept the input
    # priority: Medium , Severity: minor

  Scenario: #20- Confirm password field validation with matching password  
    Given The user on the add form
    When The user enters a valid password
    And Enters the same password in confirm password field
    Then The system should accept the input
    # priority: Medium , Severity: minor
  
  Scenario: #21- Confirm password field validation with not matching password  
    Given The user on the add form
    When The user enters a valid password
    And Enters another password in confirm password field
    Then The system should reject the input
    And Display an error message that passwords not match 
    # priority: Medium , Severity: minor

  
  Scenario: #22- Successful user addtion  
    Given The user on the add form
    When The user enters valid user details
    And Clicks on the save button
    Then The system should display a message indicating the regester was successful
    And User details should be saved in the system
    # priority: High , Severity: Major

  Scenario: #23- User exists validation  
    Given The user on the add form
    When The user enters a user name that already exists
    Then The system should reject
    And Display an error message that user name already exists
    # priority: Medium , Severity: minor

  