Rails.application.routes.draw do
  resources :reviews
  devise_for :users
  resources :albums

  root 'albums#index'


end
