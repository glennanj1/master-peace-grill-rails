Rails.application.routes.draw do

  resources :foods, only: [:index, :update]
  resources :users


  post "/signup", to: "users#create"
  get "/me", to: "users#show"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
end
