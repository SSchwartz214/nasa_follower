Rails.application.routes.draw do
  root "home#index"

  get '/dashboard', to: 'dashboard#index'
  get '/search', to: 'search#index'
end
