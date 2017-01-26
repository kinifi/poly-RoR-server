Rails.application.routes.draw do

  root 'static_pages#home'
  get '/home', to: 'static_pages#home'
  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/search', to: 'polies#index'
  get '/support', to: 'support_page#support'
  #poly creation and listing
  get '/polies', to: 'polies#index'
  get '/polies/new', to: 'polies#new'
  #user creation and login
  get '/listusers', to: 'users#index'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  post '/reset', to: 'password_reset#reset'

  resources :users
  resources :polies
end
