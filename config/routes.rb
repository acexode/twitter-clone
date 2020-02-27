Rails.application.routes.draw do

  # get 'password_resets/new'
  # get 'password_resets/edit'
  root 'home#index'
  resources :users
  resources :account_activations, only: [:edit]
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout' => 'sessions#logout'
  get '/loggedout', to: 'sessions#loggedout'
  resources :password_resets,     only: [:new, :create, :edit, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
