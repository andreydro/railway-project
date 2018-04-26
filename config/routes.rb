Rails.application.routes.draw do
  root 'searches#show'
  resources :trains
  resources :routes
  resources :stations
  resources :tickets, only: [:create, :show, :new, :index, :destroy]
  devise_for :users
end
