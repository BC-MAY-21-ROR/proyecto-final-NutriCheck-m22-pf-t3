# frozen_string_literal: true

Rails.application.routes.draw do
  resources :slots
  root 'welcome#home'
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
  resources :appointments
  get 'managers_admin', to: 'managers#admin'
  get 'in_construction', to: 'managers#in_construction'
  get 'professionals/:id/profile', to: 'professionals#profile'
  get 'slots_professionals', to: 'slots#professionals'
  get 'slots_services', to: 'slots#services'
end
