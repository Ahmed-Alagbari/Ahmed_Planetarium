#this feature allows users to delete planets from their planetarium according to US5
# US5: As a user I want to remove planets and moons from the Planetarium so I can correct my findings

  Feature: Planet deletion

    #this scenario uses positive test data
  Scenario:
    Given the user is properly logged in to their account
    And the user is on the home page
    When the user clicks the planet deletion input
    And the use provides vaild planet name
    Then the table should refresh
    And the user should be able to see the named planet removed
    And the moons owned by that planet should be removed

    #this scenario uses negative test data
  Scenario:
    Given the user is properly logged in to their account
    And the user is on the home page
    When the user clicks the planet deletion input
    And the use provides invaild planet name
    Then the user should get a browser alert saying "invalid planet name"
    And the user should stay on the home page
