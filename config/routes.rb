Rails.application.routes.draw do

  devise_for :users

  namespace :admin do
  	resources :cinemas do
      resources :reviews, only: [:index, :destroy]
    end
  	resources :users
  end

  resources :cinemas, only: [:index, :show] do
    resources :reviews, only: [:create, :destroy]
  end
  root 'cinemas#index' 
end
