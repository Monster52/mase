Rails.application.routes.draw do
  devise_for :users
  resources :units
  get 'landing/index'
  root 'landing#index'
end
