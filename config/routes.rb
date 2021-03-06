Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # retrieves all actors
  get "/actors" => "actors#index"

  # uploads a new actor
  post "/actors" => "actors#create"

  # retrieves one actor by id
  get "/actors/:id" => "actors#show"

  # updates an actor's info
  patch "/actors/:id" => "actors#update"

  # deletes a specific actor
  delete "/actors/:id" => "actors#destroy"


  get "/movies" => "movies#index"
  post "/movies" => "movies#create"
  get "/movies/:id" => "movies#show"
  patch "/movies/:id" => "movies#update"
  delete "/movies/:id" => "movies#destroy"

  post "/users" => "users#create"
  
  post "/sessions" => "sessions#create"

  post "/movie_genres" => "movie_genres#create"

end
