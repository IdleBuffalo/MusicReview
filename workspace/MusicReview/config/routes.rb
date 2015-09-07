Rails.application.routes.draw do
  
  devise_for :users
  resources :albums do
  	collection do
  		get 'search'
  	end
  	resources :reviews, except: [:show, :index]
  end

  root 'albums#index'


end
