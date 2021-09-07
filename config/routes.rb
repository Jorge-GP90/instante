Rails.application.routes.draw do
  resources :users
  resources :posts
  resources :favorites
  resources :sessions, only: [:new, :create, :destroy]
end
