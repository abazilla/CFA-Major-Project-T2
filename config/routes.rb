Rails.application.routes.draw do
  root 'home#index'
  devise_for :users

  resources :profiles
  resources :projects do
    resources :donations
  end
end
