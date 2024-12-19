#this feature allows users to add planets to their planetarium
#according to User Story 4

  Feature: Planet addition
   #because the user has to be properly logged in to see the planet creation input, we can set up a background
    Background:
      Given user is logged in
      And on home page
      When user clicks planet creation input

    # in this scenario we use positive test data with adding an image
    Scenario:
      And the user provides valid planet name
      When the user decides to upload an image
      And the user provides a valid filetype
      Then the table should refresh
      And the user should be able to see the new planet added

    #in this scenario we use positive test data without adding an image
    Scenario:
      And the user provides valid planet name
      When the user decides not to upload an image
      Then the table should refresh
      And the user should be able to see the new planet added

   #in this scenario we use negative test data to test image format requirement
   Scenario:
     When the user clicks the planet creation input
     And the user provides valid planet name
     When the user decides to upload an image
     And the user uploads invalid file type
     Then the user should get a browser alert saying "Invalid filetype"
     And the user should stay on the home page

     #in this scenario we we negative test data to test planet name requirements
    Scenario Outline:
      Given the user is properly logged in to their account
      And the user is on the home page
      When the user clicks the planet creation input
      And the user provides planet name"<planet name>"
      Then the user should get a browser alert saying "Invalid planet name"
      And the user should stay on the home page

      Examples:
       |planet name|
       |           |
       |iDontKnowWhatToNameThisPlanet11|
       |M@r$|
       |E-arth 6_16|
