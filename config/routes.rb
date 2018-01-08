Rails.application.routes.draw do
  #devise_for :users
  namespace :v1, defaults: {format: :json} do
    resources :users, only: [:create]
    resources :sessions, only: [:create, :destroy]
    resources :posts, only: [:create, :index, :show]
    resources :comments, only: [:create]
  end
end
