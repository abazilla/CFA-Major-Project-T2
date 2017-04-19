Rails.application.routes.draw do
  get 'paid_forward/index'

  resources :profiles
  resources :donations
  resources :projects
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
