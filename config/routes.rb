Rails.application.routes.draw do
  resources :categories
  resources :foods, only: [:index, :update, :show]
  resources :users


  post "/signup", to: "users#create"
  get "/me", to: "users#show"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
end
