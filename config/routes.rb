Rails.application.routes.draw do
  devise_for :users
  root "home#index"

  get '/search', to: 'search#index'

  resources :favorites, only: [:index, :create, :destroy]
end
