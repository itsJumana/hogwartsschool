Rails.application.routes.draw do
 
  devise_for :wizards


  resources :administrators
  resources :followers
  resources :spells
  resources :wizards
  
  root "home#index"
end
