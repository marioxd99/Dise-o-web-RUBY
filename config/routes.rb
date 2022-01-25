Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'

  get 'notes/index'
  get 'notes/edit'
  get 'notes/show'
  get 'home/index'
  root 'home#index'

  resources :users
  resources :notes
  resources :collections
  get 'collections/index'


  resources :sessions, only: [:new, :create, :destroy]
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
end
