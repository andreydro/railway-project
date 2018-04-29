Rails.application.routes.draw do
  root 'searches#show'
  devise_for :users

  resource :search, only: [:new, :create, :show, :edit]
  resources :tickets, only: [:create, :show,]

  namespace :admin do
    resources :stations do
      patch :update_position, on: :member
      patch :update_time, on: :member
    end

    resources :trains do
      resources :carriages, shallow: true
    end

    resources :routes
    resources :tickets
  end
end
