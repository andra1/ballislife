class DirectorsController < ApplicationController

  def update
    director = Director.find_by(id: params["id"])
    director.name = params["name"]
    director.save
    redirect_to "/"
  end

  def destroy  
    director = Director.find_by(id: params["id"])
    director.delete
    redirect_to "/"
  end

  def create
    Director.create :name => params["name"]
    redirect_to "/"
  end

end
