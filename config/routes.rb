Rails.application.routes.draw do
  resources :users, :chores, :tasks
end
