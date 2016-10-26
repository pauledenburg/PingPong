# Setup
1. Create a mysql database called pingpong
1. Import ```pingpong.sql``` into your mysql database
1. Edit ```lib/config.php``` to reflect your mysql settings. If you're using default settings for mamp this is unnecessary.
1. Enjoy Ping Pong Score Master 3000!

## Tips
* Reset all scores by browsing to ```reset.php``` BEWARE, All score DATA will be deleted!!!
* Add more names by adding a line in names.txt and then browsing to ```importnames.php``` or simply add them manually to database

# The what

The goal of this project is to create a **Ping Pong** ranking system for
the WU16 class at Yrgo.

# The how

The application will start off by asking the user to initiate a new game.
The user will then be prompted to submit the number of players in the current round.
This will (eventually) create x number of input fields or drop-down-lists for users to enter their names.(On a different page)
Once all names have been entered, users will be redirected to the "Game On" page where a named button will appear for each player.

The first player to get 'Tre prickar' will then go click the button with hens name on it. This will award the player with 1 point.
The second player to lose will receive 2 points when clicking hens button and so on.
The winner of the round will recieve 1 point for each player participating plus an additional 2 points for being awesome.

Feel free to pitch in with anything you want.

Missing a feature? - **Add it**

Application looking like a complete nubz0r made it? - **Motherflipping style  it**

Want this app for your own school Ping Pong team? - **Just take it**

# The why

Because **Fuck yeah!** There can only be one greatest mini Ping Pong player in WU16.

# Use with docker-compose
You can use Docker to instantly create a working environment with PHP, Apache and MySQL.

1. Set configuration in `lib/config.php` and `docker-compose.yml`
1. update databasename and root password in `docker-compose.yml` according `lib/config.php`
1. start the docker containers: `docker-compose up -d`
1. go with your browser to `http://localhost`

Initially you need to populate the database
1. get the `id` of the docker container with the command `docker ps`
1. get a bash shell in the database container: `docker exec -it <id> bash`
1. import the database (get credentials from docker-compose.yml): `mysql -u pingponguser -pVeryS3cure! pingpong < /tmp/pingpong.sql`
1. go with your browser to `http://localhost` and play on!

To shut down, issue the following command: `docker-compose down`
