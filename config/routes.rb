Rails.application.routes.draw do
  resources :reviews, only: [:index, :show, :create, :update, :destroy]
  resources :restaurants, only: [:index, :show ]
  resources :users, only: [:index, :show, :create, :update, :destroy]
  

  # post "/login" to: "sessions#create"
end
