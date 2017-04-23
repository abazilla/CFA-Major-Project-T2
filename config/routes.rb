Rails.application.routes.draw do
  root 'home#index'
  devise_for :users

  post '/send_email', to: 'home#send_email', as: 'send_email'

  resources :paid_forwards
  resources :profiles
  resources :projects do
    collection do
      get :search
    end
    resources :donations
  end
end
