Rails.application.routes.draw do
  root 'searches#show'
  resources :trains do
    resources :carriages, shallow: true
  end
  resources :routes
  resources :stations do
    patch :update_position, on: :member
  end
  resource :search, only: [:new, :show, :edit]
  resources :tickets, only: [:create, :show, :new, :index, :destroy]

  devise_for :users
end
