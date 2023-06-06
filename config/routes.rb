Rails.application.routes.draw do
  root "sessions#new"
  resources :users, only: %i[new create show edit update]
  resources :sessions, only: %i[new create destroy]
  resources :pictures do
    collection { post :confirm }
  end
  resources :favorites, only: %i[create destroy]
end
