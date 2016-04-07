Rails.application.routes.draw do
  resources :zooms
  devise_for :users
  get 'home/index'
  get 'home/about'
  root 'home#index'


end
