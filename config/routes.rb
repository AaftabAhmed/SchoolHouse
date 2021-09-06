Rails.application.routes.draw do

  get 'teachers/index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'pods#index'
  devise_for :users
  resources :children

end
