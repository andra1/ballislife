class PlayersController < ApplicationController

	def join
    	@player = Player.create :game_id => params["id"], :user_id => session[:user_id]
    	if @player.errors.any?
    		@player.errors.each do |attribute, message|
    			puts attribute
    			puts message
    			flash[:notice] = "You have already joined this game"
    			redirect_to "/games"
    		end
    	else
        	flash[:notice] = "You successfully joined this game"
        	@user = User.find_by(id: session[:user_id])
        	@user.games_played = @user.games_played + 1
        	@user.save
    		redirect_to "/games/#{params["id"]}"
    	end
  	end

  	def destroy
  		game_value = params["id"]
  		@player = Player.find_by game_id: params["id"], user_id: session[:user_id]
  		@player.delete
  		redirect_to "/games"

  	end
end
