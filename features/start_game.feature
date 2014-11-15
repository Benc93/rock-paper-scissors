Feature: Registering to play
  In order ot play a game
  As a player
  I want to register for a game
  
  Scenario: Register for a game
    Given I am on the homepage
    When I see "Would you like to play a game?"
    Then I should click "Start a new game"

  Scenario: Submit Player Name
    Given I'm on the Registration page
    When I see "What is your name?"
    And I give my name
    When I have given my name
    Then I should see 'Welcome Ben'