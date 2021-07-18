Rails.application.routes.draw do
  devise_for :users
  root to: "reviews#index"
  resources :reviews do
    resources :comments, only: :create
    resources :likes, only: [:create, :destroy]
  end
  resources :users, only: :show
end
