# frozen_string_literal: true

Rails.application.routes.draw do
  # Api definition
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :users, only: [:show, :create, :update, :destroy]
      resources :tokens, only: [:create]
      resources :products, only: %i[show index create update destroy]
      resources :orders, only: %i[index]
    end
  end
end
