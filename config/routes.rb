Rails.application.routes.draw do

  namespace :admin do
	resources :cinemas
  end

  resources :cinemas, only: [:index, :show]
  root 'cinemas#index' 
end
