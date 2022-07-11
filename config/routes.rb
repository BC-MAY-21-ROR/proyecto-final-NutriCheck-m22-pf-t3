Rails.application.routes.draw do

  root 'users#index'
  resources :users
  resources :managers
  resources :administrators
  resources :professionals
  resources :licenses
  resources :specialities
  resources :schedules
end
