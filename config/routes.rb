Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  resources :blogs
  resources :images
  # Users Routes
  devise_for :users
  resources :users

  # Main Page Route
  get "home/index"
  root to: "home#index"
end
