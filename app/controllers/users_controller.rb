class UsersController < ApplicationController

  def update
    @user = User.find_by(id: session[:user_id])
    @user.email = params["email"]
    @user.first_name = params["first_name"]
    @user.last_name = params['last_name']
    @user.date_of_birth = params["date_of_birth"]
    @user.phone_number = params["phone_number"]
    @user.skill_level = params["skill_level"]
    @user.save
    flash[:notice] = "Successfully made changes to profile"
    redirect_to "/users/#{session[:user_id]}"
  end

  def destroy
    user = User.find_by(id: params["id"])
    user.delete
    redirect_to "/users"
  end

  def create

    @user = User.new
    @user.email = params["email"]
    @user.password = params["password"]
    @user.first_name = params["first_name"]
    @user.last_name = params['last_name']
    @user.date_of_birth = params["date_of_birth"]
    @user.phone_number = params["phone_number"]
    @user.skill_level = params["skill_level"]

    if @user.save
      flash[:notice] = "Thanks for signing up! #{@user.first_name}"
      redirect_to "/users/thanks"
    else
      flash[:error] = "**Error in registration, please fill out all required fields correctly**"

      render 'new'
    end
  end

  def show
    if params["id"].to_s == session[:user_id].to_s
      render 'view.html.erb'
    else
      #puts "Value of params #{params["id"]}"
      #puts "Session id is #{session[:user_id]}"
      flash[:notice] = "Trying to access user profile without authorization"
      redirect_to "/"
    end
  end

  def edit_user
    if params["id"].to_s == session[:user_id].to_s
      render 'edit.html.erb'
    else
      flash[:notice] = "Trying to edit user profile without authorization"
      redirect_to "/"
    end
  end


end