<?php

use Behat\Behat\Context\Context;
use Behat\Gherkin\Node\PyStringNode;
use Behat\Gherkin\Node\TableNode;

include_once __DIR__.'/../../../lib/game.php';

/**
 * Defines application features from the specific context.
 */
class FeatureContext implements Context
{
    var $game;

    /**
     * Initializes context.
     *
     * Every scenario gets its own context instance.
     * You can also pass arbitrary arguments to the
     * context constructor through behat.yml.
     */
    public function __construct()
    {
    }

    /**
     * @BeforeSuite
     */
    public static function bootstrapPingPongGame()
    {
        $game = new PingPongGame();
        self::$game = $game;
    }

    /**
     * @Given /^an user exists with the name "([^"]*)"$/
     */
    public function anUserExistsWithTheName($username)
    {
        $game = new PingPongGame();
        $game->addPlayer($username);
    }

    /**
     * @Given /^I wait for the player selection to load$/
     */
    public function iWaitForThePlayerSelectionToLoad()
    {
        $this->getSession()->wait(
            5000,
            "$('playersForm:visible').length > 0"
        );
    }

    /**
     * @Given I am logged in
     */
    public function iAmLoggedIn()
    {
        throw new PendingException();
    }

    /**
     * @Then user :arg1 should have a score of :arg2
     */
    public function userShouldHaveAScoreOf($arg1, $arg2)
    {
        throw new PendingException();
    }
}
