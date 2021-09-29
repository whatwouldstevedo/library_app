# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'libraries#index'

  resources :libraries do
    resources :authors
  end
end
