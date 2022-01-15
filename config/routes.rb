Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/one_actor" => "actors#display_single_actor"

  get "/movies" => "movies#all_movies"

  get "/a_silent_voice" => "movies#a_silent_voice"

  get "/demon_slayer" => "movies#demon_slayer"

  get "/your_name" => "movies#your_name"
end
