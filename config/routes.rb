WeightTraining::Application.routes.draw do

  get "pages/home"
  root :to => 'pages#home'

  resources :password_resets
  resources :user_sessions, as: :user_sessions
  resources :users, as: :users
  resources :routines do
    member do
      put 'update_performance'
    end
  end
    
  match 'login' => 'user_sessions#new', :as => :login
  match 'logout' => 'user_sessions#destroy', :as => :logout
end
