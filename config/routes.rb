Rails.application.routes.draw do
  root 'users#index'
  resources :turns
  resources :users
  resources :managers
  resources :administrators
  resources :professionals
  resources :schedules
end
