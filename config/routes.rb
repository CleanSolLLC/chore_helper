Rails.application.routes.draw do

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' } 
  root 'site#index' 
  resources :users, :chores, :tasks
end
