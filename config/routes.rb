Rails.application.routes.draw do
 
  root 'administrators#index'
  resources :administrators
end
