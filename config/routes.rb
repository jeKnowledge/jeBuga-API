Rails.application.routes.draw do
  #devise_for :users
  namespace :v1, defaults: {format: :json} do
    resources :comments, only: [:create]
    resources :games, only: [:index]
    resources :posts, only: [:create, :index, :show]
    resources :sessions, only: [:create, :destroy]
    resources :themes, only: [:create, :index]
    resources :users, only: [:create]
  end
end
