#This feature allows registered users to login to their planetarium to view and interact with their homepage
#according to User Story 2
  Feature: User Login
        # in this scenario we use positive and negative test data to achieve expected results
    Scenario Outline:valid credentials should pass, invalid credentials should return alert
      Given the user is on the login page
      When the user provides a "<Username>"
      And the user provides a "<Password>"
      And the user submits the credentials
      Then the user should be encounter "<ExpectedResult>"
      And the user should be redirected to the "<Page>"



      Examples:
        |Username|Password|ExpectedResult|Page|
        |Batman    |Iamthenight1939    |login success            |   Home   |
        |Batman    |b0Ts	           |Invalid Credentials alert|   Login  |
        |Robin     |Iamthenight1939	   |Invalid Credentials alert|   Login  |
        |Robin     |b0Ts               |Invalid Credentials alert|   Login  |
