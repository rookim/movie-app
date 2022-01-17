Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # uses query parameters to retrieve one actor by id
  get "/home" => "actors#one_actor"

  # uses url segment parameters to retrieve one actor by id
  get "/home/:id" => "actors#one_actor"

end
