Rails.application.routes.draw do
  devise_for :users
  
  root 'site#index' #take user to their index page
  resources :users, :chores, :tasks
end
