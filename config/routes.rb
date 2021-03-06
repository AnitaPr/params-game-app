Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "query_params" => "params#query_params"
  get "/games", controller: "params", action: "number_games"

  get "/url_segment_params/:user_number" => "params#url_segment"

  post "/body_params" => "params#body_params"
end
