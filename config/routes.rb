Rails.application.routes.draw do
  get 'sessions/new'

  root to: 'static#index' # tego nie bylo 
  get    '/feed',    to: 'static#feed'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :like_logs
  resources :photos
  resources :categories
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
