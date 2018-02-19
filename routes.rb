Rails.application.routes.draw do

  root 'games#index'

  get "/games" => "games#index"
  get "/games/new" => 'games#new'
  post "/games" => 'games#create'

  get "/movies/:id" => 'movies#show'
  delete "/movies/:id" => 'movies#destroy'
  get "/movies/:id/edit" => 'movies#edit'
  patch "/movies/:id" => 'movies#update'

  get "/directors" => "directors#index"
  get "/directors/new" => 'directors#new'
  post "/directors" => 'directors#create'

  get "/directors/:id" => 'directors#show'
  delete "/directors/:id" => 'directors#destroy'
  get "/directors/:id/edit" => 'directors#edit'
  patch "/directors/:id" => 'directors#update'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
