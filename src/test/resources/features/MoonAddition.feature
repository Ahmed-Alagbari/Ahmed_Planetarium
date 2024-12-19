#this feature allows users to add moons to their planetarium
#according to User Story 4

Feature: Moon addition
   #because the user has to be properly logged in to see the moon creation input, we can set up a background
  Background:
    Given user is logged in
    And on home page
    When user clicks moon creation input

    # in this scenario we use positive test data with adding an image
  Scenario:
    And the user provides valid moon name
    And the user provides valid owner planet
    When the user decides to upload an image
    And the user provides a valid filetype
    Then the table should refresh
    And the user should be able to see the new moon added

  #in this scenario we use positive test data without adding an image
  Scenario:
    And the user provides valid moon name
    And the user provides valid owner planet
    When the user decides not to upload an image
    Then the table should refresh
    And the user should be able to see the new moon added


   #in this scenario we use negative test data to test image format requirement
  Scenario:
    And the user provides valid moon name
    And the user provides valid owner planet
    When the user decides to upload an image
    And the user uploads invalid file type
    Then the user should get a browser alert saying "Invalid filetype"
    And the user should stay on the home page

  #in this scenario we use negative test data to test moons requiring owner planets
  Scenario:
    And the user provides valid moon name
    And the user provides invalid owner planet
    Then the user should get a browser alert saying "Invalid owner planet"
    And the user should stay on the home page

     #in this scenario we we negative test data to test moon name requirements
  Scenario Outline:
    Given the user is properly logged in to their account
    And the user is on the home page
    When the user clicks the moon creation input
    And the user provides moon name"<moon name>"
    Then the user should get a browser alert saying "Invalid moon name"
    And the user should stay on the home page

    Examples:
      |moon name|
      |           |
      |iDontKnowWhatToNameThisMoon1234|
      |M##n|
      |Mo-on 6_16|
