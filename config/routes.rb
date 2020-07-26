Rails.application.routes.draw do

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'images#index'

  get "/about" => "homes#about"

  resources :images, only: [:new, :create, :index, :show, :edit, :update, :destroy]
  	resources :image_comments, only: [:create, :destroy]
  resources :users, only: [:show, :edit, :update, :destroy]
end
