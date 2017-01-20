Rails.application.routes.draw do

  get 'sessions/new'

  root 'static_pages#home'
  get '/home', to: 'static_pages#home'
  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/search', to: 'polies#index'
  #poly creation and listing
  get '/polies', to: 'polies#index'
  get '/polies/new', to: 'polies#new'
  #user creation and login
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :users
  resources :polies
end
