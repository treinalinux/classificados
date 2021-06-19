# frozen_string_literal: true

Rails.application.routes.draw do
  # name send to controller home in action show
  root to: 'home#show'

  # get '/users/new', to: 'users#new'
  # post '/users', to: 'users#create'
  # Style/SymbolArray: Use `%i` or `%I` for an array of symbols.
  resources :users, only: %i[new create]

  # login
  # get '/session/new', to: 'session#new'
  resources :sessions, only: [:new]
end
