Rails.application.routes.draw do

  get 'reviews/show'

  get 'reviews/new'

  get 'reviews/create'

  get 'reviews/edit'

  get 'reviews/update'

  get 'reviews/destroy'

  devise_for :users
  namespace :admin do
	resources :cinemas
	resources :users
  end

  resources :cinemas, only: [:index, :show] do
    resources :reviews
  end
  root 'cinemas#index' 
end
