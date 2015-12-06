Rails.application.routes.draw do

  resources :litters
  get 'users', to: "users#index"

  get 'users/show'

  devise_for :users, controllers: { registrations: 'users/registrations', passwords: 'users/passwords' }

  resources :pins do
    member do
      put "like", to: "pins#upvote"
    end
  end
  get 'litters', to: 'litters#index'
  get 'photos', to: 'pins#index'
  get 'location', to: 'pages#location'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  root 'pages#home'


end
