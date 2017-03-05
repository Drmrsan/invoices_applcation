Rails.application.routes.draw do

  root 'homepage#index'
  
  get '/dashboard', to: 'dashboard#index'

  devise_for :users

  resources :users, only: [:show]
  resources :invoices
  resources :clients

end
