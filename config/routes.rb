Rails.application.routes.draw do
  resources :reviews, only: [:index, :show, :create, :update, :destroy]
  resources :restaurants, only: [:index, :show ]
  resources :users, only: [:index, :show, :create, :update, :destroy]
  
  post "/login", to: "sessions#create"
  get "/login", to: "sessions#create"
  post "/signup", to: "users#create"
  get "/me", to: "users#show"
  delete "/logout", to: "sessions#destroy"
  get "/restaurant" to: "restaurant#index"
end
