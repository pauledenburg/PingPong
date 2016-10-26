Feature: Play the game
  In order to have a good time
  As a website user
  I need to be able to play the Ping Pong Score Master game!

  Background:
    Given an user exists with the name "paul"
    And an user exists with the name "niklasson"
    And I am logged in

  @javascript
  Scenario: playing one-on-one
    When I go to "/"
    Then I should see "How many players?"
    When I fill in "numbers" with "2"
    And I press "Set Players"
    And I wait for the player selection to load
    And I fill in "player1" with "paul"
    And I fill in "player2" with "niklasson"
    And I press "New Round"
    Then I should see "Game in Progress"
    And I should see "Click name if you are OUT"
    And I should see "paul" in the "button" element
    And I should see "niklasson" in the "button" element
    When I press "paul"
    Then user "paul" should have a score of 3
    And user "niklasson" should have a score of 1
