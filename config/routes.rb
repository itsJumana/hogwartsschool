Rails.application.routes.draw do
 
  devise_for :wizards


  resources :administrators
  resources :followers
  resources :spells
  resources :wizards

  get 'profile', to: 'wizards#profile', as: 'wizard_profile'
  
  root "home#index"
end
