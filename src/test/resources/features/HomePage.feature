#this feature allows users to see and interact with their planetarium, including the planets and moons they added
#according to User Story 3

  Feature: Home page
    #in this scenario we use positive test data to achieve expected results
    Scenario: valid credentials should pass
      Given the user is properly logged in to their account
      And the user is on the home page
      Then the planets and moons they added should be visible
      And a greeting message should be present for the user

    #in this scenario we use negative test data to achieve expected results
    Scenario:
      Given the user is not logged in
      When the user tries to directly access the home page
      Then the user should be denied access
