Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/posts" => "posts#index"
    get "/posts/:id" => "posts#show"
    get "/posts/new" => "posts#new"
    post "/posts" => "posts#create"
    delete "/posts/:id" => "posts#destroy"

    get "/users/new" => "users#new"
    get "/users/:id" => "users#show"
    post "/users" => "users#create"

    post "/sessions" => "sessions#create"
  end
end
