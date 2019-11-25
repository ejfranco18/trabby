Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :places
  resources :plans
  resources :activities
  resources :users, only: [:show, :update]
end
