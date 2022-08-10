# frozen_string_literal: true

Rails.application.routes.draw do
  root 'welcome#home'

  devise_for :users, controllers: { registrations: 'registrations' }
  devise_for :patients, controllers: { registrations: 'registrations' }
  # devise_group :entity, contains: [:user, :patient]
  resources :managers, :professionals, :administrators do
    collection do
      get 'dashboard'
      post 'dashboard'
    end
  end

  resources :appointments do
    collection do
      get 'search'
      post 'search'
    end
  end

  resources :patients do
    collection do
      get 'dashboard'
      get 'search'
      post 'search'
    end
  end

  resources :slots
  resources :turns
  resources :users
  resources :licenses
  resources :specialities
  resources :schedules
  resources :diets
  resources :cards
  resources :services
  get 'in_construction', to: 'managers#in_construction'
  get 'slots_professionals', to: 'slots#professionals'
  get 'slots_services', to: 'slots#services'
  get 'slots_reservations/:id/', to: 'slots#reservations', as: 'slot_reservation'

  get 'administrator/dashboard', to: 'administrators#dashboard', as: 'administrator_dashboard'
  get 'manager/dashboard', to: 'managers#dashboard', as: 'manager_dashboard'
  get 'patient/dashboard', to: 'patients#dashboard', as: 'patient_dashboard'
  get 'professional/dashboard', to: 'professionals#dashboard', as: 'professional_dashboard'
end
