Feature: Admin users grid functionality

  Scenario: #1- Viewing the list of admin users
    Given The user is on admin page
    When The user move  to the user grid
    Then The admin should see a list of user records
    # priority: Medium , Severity: minor

  Scenario: #2- Sorting ascending order admin users by username
    Given The user is on admin page
    When The admin clicks on the "Username" column header
    And Selects "Asending" option
    Then The user records should be sorted in ascending order by username
    # priority: Medium , Severity: minor

  Scenario: #3- Sorting descending order admin users by username
    Given The user is on admin page
    When The admin clicks on the "Username" column header
    And Selects "Descending" option
    Then The user records should be sorted in descending order by username
    # priority: Medium , Severity: minor

  Scenario: #4- Sorting  ascending order admin users by user role
    Given The user is on admin page
    When The admin clicks on the "user role" column header
    And Selects "Asending" option
    Then The user records should be sorted in ascending order by user role
    # priority: Medium , Severity: minor

  Scenario: #5- Sorting  descending order admin users by user role
    Given The user is on admin page
    When The admin clicks on the "user role" column header
    And Selects "Descending" option
    Then The user records should be sorted in descending order by user role
    # priority: Medium , Severity: minor

  Scenario: #6- Sorting ascending order admin users by employee name
    Given The user is on admin page
    When The admin clicks on the "Employee name" column header
    And Selects "Asending" option
    Then The user records should be sorted in ascending order by employee name
    # priority: Medium , Severity: minor

  Scenario: #7- Sorting descending order admin users by employee name
    Given The user is on admin page
    When The admin clicks on the "Employee name" column header
    And Selects "Descending" option
    Then The user records should be sorted in descending order by employee name
    # priority: Medium , Severity: minor

  Scenario: #8- Sorting ascending order admin users by status
    Given The user is on admin page
    When The admin clicks on the "Status" column header
    And Selects "Asending" option
    Then The user records should be sorted in ascending order by status
    # priority: Medium , Severity: minor

  Scenario: #9- Sorting descending order admin users by status
    Given The user is on admin page
    When The admin clicks on the "Status" column header
    And Selects "Descending" option  
    Then The user records should be sorted in descending order by status
    # priority: Medium , Severity: minor

  Scenario: #10- Specify all admin users
    Given The user is on admin page
    When The admin clicks on the square beside the "Username" column header
    Then All user records should be specified
    # priority: Medium , Severity: minor
    

  Scenario: #11- Editing an admin user's details
    Given The user open admin page 
    When The user clicks on the "Edit" icon
    And The admin should be directed to the user's edit page
    And Should be able to modify user details
    And The user clicks the saves button
    Then Successful message will appear
    And The user's details should be updated in the grid
    # priority: Medium , Severity: minor

  Scenario: #12- Deleting an admin user
    Given The user open admin page 
    When The user clicks on the "Delete" icon
    And A confirmation dialog should appear
    And The user confirms deletion
    Then The user should be removed from the grid
    And Successful message will appear
    And The user's record should no longer exist in the system
    # priority: Medium , Severity: minor

  