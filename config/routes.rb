Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :users, only: :show
  resources :places
  resources :plans
  resources :activities
  resources :users, only: [:show, :update]
  get 'test', to: 'pages#test'
end
