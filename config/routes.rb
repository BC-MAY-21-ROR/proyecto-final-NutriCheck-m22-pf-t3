Rails.application.routes.draw do
 
  root 'administrators#index'
  resources :administrators
  resources :schedules
end
