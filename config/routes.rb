# frozen_string_literal: true

Rails.application.routes.draw do
  root 'users#index'
  resources :turns
  resources :users
  resources :managers
  resources :administrators
  resources :professionals
  resources :licenses
  resources :specialities
  resources :schedules
  resources :diets
  resources :patients
  resources :cards
  resources :services
  get 'managers_admin', to: 'managers#admin'
  get 'in_construction', to: 'managers#in_construction'
end
