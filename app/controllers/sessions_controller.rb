class SessionsController < ApplicationController

	def create 
		@user = User.find_by(email: params["email"])
		if @user != nil
			if @user.authenticate(params["password"])
				session[:user_id] = @user.id
				flash[:notice] = "Correctly Signed In, Please Explore our App"
				redirect_to "/games"
			else
				flash[:notice] = "Password doesn't match previous our records, please try again"
				redirect_to "/sessions/login"
			end
		else
			flash[:notice] = "Email address does not match our records, please try again"
			redirect_to "/sessions/login"
		end
	end


	def destroy
    	reset_session
    	redirect_to "/", notice: "Signed Out of User Profile"
  	end
	

end