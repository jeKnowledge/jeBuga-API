Rails.application.routes.draw do
  #devise_for :users
  namespace :v1, defaults: {format: :json} do
    resources :comments, only: [:create]
    resources :games, only: [:create, :index, :show]
    resources :posts, only: [:create, :index, :show]
    resources :sessions, only: [:create, :destroy]
    resources :themes, only: [:create, :index]
    resources :users, only: [:create]
    resources :authentications, only: [:create]
  end
end
