Rails.application.routes.draw do
  devise_for :users

  root 'groups#index'
  resources :users, only: [:edit, :update, :destroy]
  resources :groups, only: [:new, :create, :update, :edit]

end