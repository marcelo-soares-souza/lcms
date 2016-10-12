Rails.application.routes.draw do
  # Users Routes
  devise_for :users
  resources :users

  # Main Page Route
  get 'home/index'
  root to: "home#index"
end
