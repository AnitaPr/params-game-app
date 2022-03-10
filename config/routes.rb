Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "query_params" => "params#query_params"
  get "/games", controller: "params", action: "number_games"
end
