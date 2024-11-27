Rails.application.routes.draw do
 
  devise_for :wizards

  resources :spells
  resources :wizards

  get 'profile', to: 'wizards#profile', as: 'wizard_profile'

  # Follow/Unfollow routes
  post 'follow/:followed_id', to: 'followers#follow', as: 'follow'
  delete 'unfollow/:followed_id', to: 'followers#unfollow', as: 'unfollow'
  
  root "home#index"
end
