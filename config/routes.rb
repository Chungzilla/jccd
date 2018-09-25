Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  resources :inventories
  resources :admins
  resources :cake_dealers
  resources :products
  resources :designs
  resources :categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'home#index'

  authenticated do
    root to: 'invventories#index'
  end
end
