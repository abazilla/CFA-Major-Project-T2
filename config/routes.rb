Rails.application.routes.draw do
  root 'home#index'
  devise_for :users

  post '/send_email', to: 'home#send_email', as: 'send_email'

  resources :paid_forwards
  resources :profiles
  resources :projects do
    resources :donations
  end
end
