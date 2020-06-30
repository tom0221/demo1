Rails.application.routes.draw do
  get 'homes/top'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'imeges#index'

  resources :images, only: [:new, :create, :index, :edit, :update, :destroy]
  resources :users, only: [:index, :show, :edit, :update, :destroy]
end
