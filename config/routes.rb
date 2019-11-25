Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :users, only: :show
  resources :places
  resources :plans
  resources :activities
end
