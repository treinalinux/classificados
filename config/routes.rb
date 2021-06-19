# frozen_string_literal: true

Rails.application.routes.draw do
  # name send to controller home in action show
  root to: 'home#show'

  get '/users/new', to: 'users#new'
  post '/users', to: 'users#create'

  # login
  get '/session/new', to: 'session#new'
end
