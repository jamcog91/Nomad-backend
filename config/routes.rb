Rails.application.routes.draw do
  resources :reviews, only: [:index, :show, :create, :update, :destroy]
  resources :restaurants, only: [:index, :show ]
  resources :users, only: [:index, :show, :create, :update, :destroy]
  
  post "/login", to: "sessions#create"
  get "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  post "/signup", to: "users#create"
  get "/me", to: "users#me"
  get "/review", to: "review#show"
  get "/restaurants", to: "restaurants#index"
  get "/restaurants/:id", to: "restaurants#show"
  get "/users", to: "users#show"
  post "/new_review", to: "review#create"
  # get "/user_profiles", to: "user_profiles#show"
end
