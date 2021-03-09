Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    post "/dogs" => "dogs#create"
    get "/dogs" => "dogs#index"
    get "/dogs/:id" => "dogs#show"

    post "/sessions" => "sessions#create"
    post "/users" => "users#create"
  end
end
