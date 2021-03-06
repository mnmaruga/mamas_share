Rails.application.routes.draw do
  get 'rooms/index'
  root to: 'rooms#index'
  devise_for :users
  resources :posts do
    resources :comments, only: [:index, :create]
  end
end
