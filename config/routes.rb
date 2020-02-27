Rails.application.routes.draw do
  devise_for :users
  
  root 'site#index'
  resources :users, :chores, :tasks
end
