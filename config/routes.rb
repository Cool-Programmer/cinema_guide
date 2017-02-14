Rails.application.routes.draw do

  devise_for :users
  namespace :admin do
	resources :cinemas
	get 'users', to: 'users#index'
  end

  resources :cinemas, only: [:index, :show]
  root 'cinemas#index' 
end
