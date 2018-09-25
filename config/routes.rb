Rails.application.routes.draw do
  resources :inventories
  resources :admins
  resources :cake_dealers
  resources :products
  devise_for :users
  resources :designs
  resources :categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'categories#index'
end
