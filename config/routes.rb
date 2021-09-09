Rails.application.routes.draw do

  get '/profile' => 'profiles#show'
  get '/teachers' => 'teachers#index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'pods#index'
  devise_for :users
  resources :children
  resources :pod_requests

end
