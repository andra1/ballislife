Rails.application.routes.draw do


  get "/" => "games#home"

  get "/games" => "games#index"
  get "/games/new" => 'games#new'
  get "/games/:id" => "games#show"
  post "/games" => 'games#create'
  get "/games/:id/edit" => 'games#edit'
  patch "/games/:id" => 'games#update'
  delete "/games/:id" => 'games#destroy'


  get "/users" => 'users#new'
  post "/users" => 'users#create'
  get "/users/:id" => 'users#show'
  get "/users/edit/:id" => 'users#edit_user'
  patch "/users/edit" => 'users#update'

  get "/players" => 'users#players'
  get "/players/:id" => 'players#join'
  delete "/players/:id" => 'players#destroy'
  

  get "/sessions/login" => 'sessions#login'
  post "/sessions" => 'sessions#create'
  get "/logout" => 'sessions#destroy'



end
