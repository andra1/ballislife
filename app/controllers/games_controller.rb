class GamesController < ApplicationController

  def create
    Game.create :name => params["name"],
                 :location => params["location"],
                 :max_players => params["max_players"],
                 :start_time => params["start_time"],
                 :end_time => params["end_time"]
    redirect_to "/games"

  end  

end
