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
  resources :patients
end
