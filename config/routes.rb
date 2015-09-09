Rails.application.routes.draw do
  resources :comments
  resources :videos
  resources :rates, only: [:create, :destroy]

    
  root :to => 'user_sessions#new'
  resources :user_sessions, only: [:new, :create, :destroy]
  resources :users

  get 'login' => 'user_sessions#new', :as => :login
  post 'logout' => 'user_sessions#destroy', :as => :logout
end
