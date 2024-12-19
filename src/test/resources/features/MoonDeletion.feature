#this feature allows users to delete moons from their planetarium according to US5
# US5: As a user I want to remove planets and moons from the Planetarium so I can correct my findings

Feature: Moon deletion

    #this scenario uses positive test data
  Scenario:
    Given the user is properly logged in to their account
    And the user is on the home page
    When the user clicks the moon deletion input
    And the user provides vaild moon name
    Then the table should refresh
    And the user should be able to see the named moon removed

     #this scenario uses negative test data
  Scenario:
    Given the user is properly logged in to their account
    And the user is on the home page
    When the user clicks the moon deletion input
    And the use provides invaild moon name
    Then the user should get a browser alert saying "Invalid moon name"
    And the user should stay on the home page
