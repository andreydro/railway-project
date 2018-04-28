Rails.application.routes.draw do
  root 'searches#show'

  resource :search, only: [:create, :show, :edit]
  resources :tickets, only: [:create, :show, :new, :index, :destroy]
  resources :trains do
    resources :carriages, shallow: true
  end
  resources :routes
  resources :stations do
    patch :update_position, on: :member
    patch :update_time, on: :member
  end

  devise_for :users
end
