Rails.application.routes.draw do

  root 'games#index'

  get "/games" => "games#index"
  get "/games/:id" => "games#show"

  get "/games/new" => 'games#new'
  post "/games" => 'games#create'

  get "/games/:id/edit" => 'games#edit'
  patch "/games/:id" => 'games#update'

  delete "/games/:id" => 'games#destroy'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
