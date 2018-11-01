Rails.application.routes.draw do
  
  
  
  devise_for :users, controllers: {
    registration: 'users/registration',
    sessions: 'users/sessions'
  } 
  
  namespace :admin do
      resources :assignments
      resources :equipments
      resources :ranks
      resources :resources
      resources :roll_calls
      resources :tours

      root to: "assignments#index"
    end
  get 'homes/index'
  root to: 'splashpages#index' 
  resources :assignments
  resources :equipments
  resources :resources
  resources :ranks
  resources :tours
  resources :roll_calls
  # get 'assignments/index'
  # get 'assignments/show'
  # get 'assignments/new'
  # get 'assignments/edit'
  # get 'equipments/index'
  # get 'equipments/show'
  # get 'equipments/new'
  # get 'equipments/edit'
  # get 'resources/index'
  # get 'resources/show'
  # get 'resources/new'
  # get 'resources/edit'
  # get 'ranks/index'
  # get 'ranks/show'
  # get 'ranks/new'
  # get 'ranks/edit'
  # get 'tours/index'
  # get 'tours/show'
  # get 'tours/new'
  # get 'tours/edit'
  # get 'roll_calls/index'
  # get 'roll_calls/show'
  # get 'roll_calls/new'
  # get 'roll_calls/edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
