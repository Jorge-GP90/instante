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
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
