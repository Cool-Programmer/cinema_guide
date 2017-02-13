Rails.application.routes.draw do

  namespace :admin do
	resources :cinemas
  end

  get 'cinemas', to: 'cinemas#index'
  root 'cinemas#index' 
end
