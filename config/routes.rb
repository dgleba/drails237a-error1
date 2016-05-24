Rails.application.routes.draw do
  resources :rental_records
  resources :vehicles
  resources :customers
  
  mount RailsAdmin::Engine => 'admin', as: 'rails_admin'
  namespace :admin do
    resources :users
    root to: "users#index"
  end
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
