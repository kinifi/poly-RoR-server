Rails.application.routes.draw do

  root 'static_pages#home'
  get '/home', to: 'static_pages#home'
  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/search', to: 'polies#index'
  get '/polies', to: 'polies#index'
  get '/polies/new', to: 'polies#new'

  resources :polies
end
