WeightTraining::Application.routes.draw do

  get "pages/home"
  root :to => 'pages#home'

  resources :user_sessions, as: :user_sessions
  resources :users, as: :users
  resources :routines
    
  match 'login' => 'user_sessions#new', :as => :login
  match 'logout' => 'user_sessions#destroy', :as => :logout
end
