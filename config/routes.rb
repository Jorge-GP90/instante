Rails.application.routes.draw do
  root to: 'sessions#new'
  resources :posts do
    collection do
      post :confirm
    end
  end
  resources :users
  resources :favorites, only: [:index, :create, :destroy]
  resources :sessions, only: [:new, :create, :destroy]
  if Rails.env.production?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
