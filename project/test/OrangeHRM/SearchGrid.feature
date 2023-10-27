Feature: user search functionality- search about users

  Scenario: #1- Verify the search grid
    Given The admin page 
    When The user clicks on the arrow beside "System Users" 
    Then The search grid should appear with required fields 
    # priority: Medium , Severity: Low
  
  Scenario: #2- Verify that the system can successfully search for a user by valid user name 
    Given The user is on the search grid 
    When The user enters a valid user name 
    And Clicks the search button
    Then The system should given the required record
    # priority: High , Severity: Medium

  Scenario: #3- Verify that the system can successfully search for a user by invalid user name 
    Given The user is on the admin page 
    When The user enters an invalid user name 
    And Clicks the search button
    Then The system should give no record found 
    # priority: High , Severity: Medium

  Scenario: #4- Verify that the system can reset the user name field 
    Given The user is on the admin page 
    When The user enters a user name and view a search result
    And Clicks the reset button
    Then The system should remove the search results
    And Reset user name field
    # priority: Medium , Severity:minor

  Scenario: #5- Verify that the system can successfully search for a user by valid employee name 
    Given The user is on the admin page 
    When The user enters a valid employee name 
    And Clicks the search button
    Then The system should given the required record
    #priority:High , Severity:Medium

  Scenario: #6- Verify that the system can successfully search for a user by invalid employee name 
    Given The user is on the admin page 
    When The user enters an invalid employee name 
    And Clicks the search button
    Then The system should give no record found 
    #priority:High , Severity:Medium

  Scenario: #7- Verify that the system can reset the employee name field 
    Given The user is on the admin page 
    When The user enters a employee name and view a search result
    And Clicks the reset button
    Then The system should remove the search results
    And Reset user name field
    #priority:Medium , Severity:minor

  Scenario: #8- Verify the user role drop-down field on the regesteration form 
    Given The user on the search grid
    When The user clicks on the user role drop-down field  
    Then The drop-down field is clickable
    And Should display correct options "Admin & ESS"
    #priority:High , Severity:Medium

  Scenario: #9- Verify select option from the user role drop-down field
    Given The user on the search grid 
    When The user clicks on the user role drop-down field  
    And  Select Admin option from the drop-down list  
    Then The selected option should be displayed on the user role drop-down field 
    #priority:Medium , Severity:minor

  Scenario: #10- Verify select another option from the user role drop-down field 
    Given The user on the search grid 
    And There is option on the user role drop-down field 
    When The user clicks on the user role drop-down field
    And  Select ESS option from the user role drop-down list  
    Then The selected option should be displayed on the user role drop-down field
    #priority:Medium , Severity:minor

  Scenario: #11- Verify that the system can successfully search for a user by "Admin" option from the user role drop-down  
    Given The user is on the search grid
    When The user selects "Admin" option from the user role drop-down 
    And Clicks the search button
    Then The system should given the required record  
    #priority:High , Severity:Medium

  Scenario: #12- Verify that the system can successfully search for a user by "ESS" option from the user role drop-down  
    Given The user is on the search grid
    When The user selects "ESS" option from the user role drop-down 
    And Clicks the search button
    Then The system should given the required record
    #priority:High , Severity:Medium

  Scenario: #13- Verify that the system can reset the user role drop-down field  
    Given The user is on the search grid
    When The user selects a user role and view a search result
    And Clicks the reset button
    Then The system should remove the search results and reset user role field
    #priority:Medium , Severity:minor
   
  Scenario: #14- Verify the status drop-down field on the regesteration form 
    Given The user on the search grid
    When The user clicks on the status role drop-down field  
    Then The status drop-down field is clickable
    And Should display correct options "Enabled & Disabled"
    #priority:High , Severity:Medium

  Scenario: #15- Verify select option from the status drop-down field
    Given The user on the search grid 
    When The user clicks on the status drop-down field  # I or user ?
    And  Select "Enabled" option from the drop-down list  
    Then The selected option should be displayed on the status drop-down field 
    #priority:Medium , Severity:minor

  Scenario: #16- Verify select another option from the status drop-down field 
    Given The user on the search grid 
    And There is option on the status drop-down field 
    When The user clicks on the status drop-down field
    And  Select "Disabled" option from the status drop-down list  
    Then The selected option should be displayed on the user role drop-down field
    #priority:Medium , Severity:minor

  Scenario: #17- Verify that the system can successfully search for a user by "Enabled" option from the status drop-down  
    Given The user is on the search grid
    When The user selects "Enabled" option from the status drop-down 
    And Clicks the search button
    Then The system should given the required record  
    #priority:High , Severity:Medium

  Scenario: #18- Verify that the system can successfully search for a user by "Disabled" option from the status drop-down  
    Given The user is on the search grid
    When The user selects "Disabled" option from the status drop-down 
    And Clicks the search button
    Then The system should given the required record  
    #priority:High , Severity:Medium

  Scenario: #19- Verify that the system can reset the status drop-down field  
    Given The user is on the search grid 
    When The user selects a status and view a search result
    And Clicks the reset button
    Then The system should remove the search results and reset status field
    #priority:Medium , Severity:minor

  Scenario: #20- Verify that the system can successfully search for a user by using more than one field  
    Given The user is on the search grid
    When The user fills user name field
    And Selects status
    And Clicks the search button
    Then The system should given the required record 

  Scenario: #22- Verify that the system can successfully search for a user by using all field  
    Given The user is on the search grid
    When The user fills user name field
    And Selects status
    And Selects user role
    And Selects employee name
    And Clicks the search button
    Then The system should given the required record

  Scenario: #23- Verify that the system can reset the fields  
    Given The user is on the search grid 
    When The user fills user name field
    And Selects status
    And Clicks the search button and the results appear
    And clicks the reset button
    Then the system should remove the search results and reset the fields
    #priority:Medium , Severity:minor