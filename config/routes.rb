Rails.application.routes.draw do
  get 'rooms/index'
  get 'posts/index/:room', to: 'posts#index', as: :posts
  root to: 'rooms#index'
  devise_for :users
  resources :posts
end
