class GamesController < ApplicationController

  def create
    Game.create :name => params["name"],
                 :location => params["location"],
                 :max_players => params["max_players"],
                 :start_time => params["start_time"],
                 :end_time => params["end_time"]
    redirect_to "/games"
  end

  def update
  	game = Game.find_by(id: params["id"])
  	game.name = params["name"]
  	game.location = params["location"]
    game.max_players = params["max_players"]
    game.start_time = params["start_time"]
    game.end_time = params["end_time"]
    game.save

    redirect_to "/games"
  end  


  def destroy
  	game = Game.find_by(id: params["id"])
  	game.delete
  	redirect_to "/games"
  	

  end


end
