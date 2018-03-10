# README

Ball is Life is a web application that allows users to create, find, and join pick-up basketball games
in their community. Users will have the functionality to search for current and upcoming basketball
games in their community based on location preferences and invite friends via FB or Twitter to join a game.

If there are no games that match a user's preferences, they will be allowed to schedule an upcoming game 
that the community will be notified of and can join. Each user will maintain a profile that records past games played, friends, basketball skill level and other characteristics to help facilitate social networking between different players.

With this functionality, Ball Is Life hopes to facilitate the process of playing pick-up basketball games and
establish a thriving pick-up basketball community. 


Setup:

1. Ball is Life is publicly deployed on heroku at https://gentle-depths-43031.herokuapp.com/

2. The web application has already been seeded with initial values and here is a sample
user that you can sign in with to access the application's functionality:

email: Michael@example.org
password: cookies


3. You will note that certain functionality of the application such as joining and deleting
games are not available unless you are a signed user



Local Access:

1. If you don't have access to internet, you can clone this app directory from github

2. cd to the app folder

3. Run the following commands:
	bundle install
	rails db:migrate
	rails db:seed

	*Please note that the Gemfile for the heroku application has the sqllite3 gem disabled but for
	running on localhost, it needs to be enabled and not commented out in gemfile*

4. Run rails server

5. Navigate to localhost:3000 in your browser 