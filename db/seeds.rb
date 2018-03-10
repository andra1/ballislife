# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#

Venue.delete_all
Game.delete_all
User.delete_all
Player.delete_all

venues = [
  {
    "name" => 'Ratner Center',
    "city" => 'Chicago',
    "address" => '5530 S Ellis Ave',
    "state" => 'IL',
    "zipcode" => '60637'
    
  },
  {
    "name" => 'United Center',
    "city" => 'Chicago',
    "address" => '1901 W Madison St',
    "state" => 'IL',
    "zipcode" => '60612'
    
  },
  {
    "name" => 'UIC Pavilion',
    "city" => 'Chicago',
    "address" => '525 S Racine Ave',
    "state" => 'IL',
    "zipcode" => '60607'
    
  },
  {
    "name" => 'Wintrust Arena',
    "city" => 'Chicago',
    "address" => '200 East Cermak Road',
    "state" => 'IL',
    "zipcode" => '60616'
    
  },
]


venues.each do |venue|
  m = Venue.new
  m.name = venue["name"]
  m.city = venue["city"]
  m.address = venue["address"]
  m.state = venue["state"]
  m.zipcode = venue["zipcode"]
  m.save
end


users = [
    { "email" => 'michael@example.org',
      "password" => 'cookies',
      "first_name" => 'Michael',
      "last_name" => 'Jordan',
      "skill_level" => 'Advanced',
      "games_played" => 25
    },
    { "email" => 'larry@example.org',
      "password" => 'apple',
      "first_name" => 'Larry',
      "last_name" => 'Bird',
      "skill_level" => 'Advanced',
      "games_played" => 21
    },
    { "email" => 'lebron@example.org',
      "password" => 'chocolate',
      "first_name" => 'Lebron',
      "last_name" => 'James',
      "skill_level" => 'Advanced',
      "games_played" => 17
    }
]

users.each do |user|
  m = User.new
  m.email = user["email"]
  m.password = user["password"]
  m.first_name = user["first_name"]
  m.last_name = user["last_name"]
  m.skill_level = user["skill_level"]
  m.games_played = user["games_played"]
  m.save

end



games = [
    {
      "name" => 'First Game 2018',
      "start_time" => '03/21/2018 1:00pm',
      "max_players" => 8,
      "current_players" => 0
    }, 
    {
      "name" => 'MPCS Game',
      "start_time" => '03/22/2018 2:00pm',
      "max_players" => 10,
      "current_players" => 0
    }, 
    {
      "name" => 'Semifinals',
      "start_time" => '03/23/2018 3:00pm',
      "max_players" => 6,
      "current_players" => 0
    }, 
    {
      "name" => 'UChicago Bragging Rights',
      "start_time" => '03/28/2018 6:00pm',
      "max_players" => 10,
      "current_players" => 0
    } 
]

creators = Array.new
all_venues = Array.new
User.all.each do |person|
  creators.push(person.id)
  #puts "Person id #{person.id}"
end

Venue.all.each do |place|
  all_venues.push(place.id)
  #puts "Venue Id #{place.id}"
end


games.each do |game|
  m = Game.new
  m.name = game["name"]
  m.start_time = game["start_time"]
  m.max_players = game["max_players"]
  m.current_players = game["current_players"]
  item = all_venues.sample
  #puts "Inserting this venue into game #{item}"
  m.venue_id = all_venues.sample
  m.creator_id = creators.sample
  m.save

end

new_games = Array.new
Game.all.each do |game|
  new_games.push(game.id)
end

new_games.each do |game|
  creators.each do |baller|
    m = Player.new
    m.game_id = game
    m.user_id = baller
    m.save
  end
end


print "There are now #{Venue.count} venues in the database.\n"
print "There are now #{User.count} users in the database \n"
print "There are now #{Game.count} games in database \n"
print "There are now #{Player.count} players in the database \n"
