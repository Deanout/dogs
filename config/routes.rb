Rails.application.routes.draw do

  devise_for :users
  resources :pins
  get 'litters', to: 'pages#litters'
  get 'photos', to: 'pins#index'
  get 'location', to: 'pages#location'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  root 'pages#home'

  
end
