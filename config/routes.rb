Rails.application.routes.draw do
  
  get 'users/show'
  get 'users/index'
  
  devise_for :users
  
  root 'application#test'
  
end
