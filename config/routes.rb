Rails.application.routes.draw do
  
  root 'site#welcome'
  get  '/sign_out', to: 'site#logout', as: 'logged_out'
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' } 
  resources :users, :chores, :tasks
end
