Feature: Playing Rock Paper Scissors
  In order to play the game
  As a signed in player
  I want to select an option

  Scenario: Making a selection
    Given I am on the game page
    When I see my selections
    Then I click on my choice

  Scenario: Seeing the result of the game
    Given I am on the results page
    Then I should see the computer's choice 
    Then I should see the winner of the game
