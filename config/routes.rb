Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/posts" => "posts#index"
    get "/posts/:id" => "posts#show"
    post "/posts" => "posts#create"
    delete "/posts/:id" => "posts#destroy"

    get "/comments/:id" => "comments#index"
    post "/comments" => "comments#create"
    delete "/comments/:id" => "comments#destroy"

    get "/votes" => "votes#index"
    get "/votes/:id" => "votes#show"
    post "/votes" => "votes#create"
    delete "/votes/:id" => "votes#destroy"

    get "/users/:id" => "users#show"
    post "/users" => "users#create"
    patch "/users/:id" => "users#update"

    post "/sessions" => "sessions#create"

    get "/categories/:id" => "categories#show"
  end
end
