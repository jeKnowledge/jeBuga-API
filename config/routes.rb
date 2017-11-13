Rails.application.routes.draw do
  #devise_for :users
  namespace :v1, defaults: {format: :json} do
    resources :users
    resources :sessions, only: [:create, :destroy]
  end
end
