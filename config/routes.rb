# frozen_string_literal: true

Rails.application.routes.draw do
  root 'welcome#home'

  devise_for :users, :path => 'u'
  devise_for :patients, :path => 'p'
  # devise_group :entity, contains: [:user, :patient]
  resources :managers, :professionals do
    collection do
      get 'dashboard'
      post 'dashboard'
    end
  end

  resources :administrators do
    collection do
      get 'dashboard'
      post 'dashboard'
      get 'patients_report'
      get 'appointments_report'
      get 'sales_report'
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

  resources :slots do
    collection do
      get 'scheduler'
      get 'schedule_new'
      get 'professionals_reservations'
      post 'professionals_reservations_new'
    end
  end
  
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
