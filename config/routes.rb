Rails.application.routes.draw do
  root 'home#index'

  resources :profiles
  resources :donations
  resources :projects
  devise_for :users

end
