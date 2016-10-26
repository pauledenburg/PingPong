Feature: Home
  In order to welcome users to the website
  As a website user
  I need to be able to see the homepage

  Scenario: Search for a word that exists on homepage
    Given I am on "/"
    Then I should see "Ping Pong Score Master"

  @javascript
  Scenario: Search for another word that exists
    Given I am on "/"
    Then I should see "3000"