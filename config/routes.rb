Rails.application.routes.draw do
  resources :modals, only: [:index, :update]
  resources :categories, only: [:index, :update, :show]
  resources :foods, only: [:index, :update, :show]
  resources :users, only: [:update]


  post "/signup", to: "users#create"
  get "/me", to: "users#show"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
end
