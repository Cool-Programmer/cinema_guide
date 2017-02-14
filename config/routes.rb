Rails.application.routes.draw do

  devise_for :users
  namespace :admin do
	resources :cinemas
  end

  resources :cinemas, only: [:index, :show]
  root 'cinemas#index' 
end
