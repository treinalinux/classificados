# frozen_string_literal: true

Rails.application.routes.draw do
  # name send to controller home in action show
  root to: 'home#show'

  get '/users/new', to: 'users#new'
end
