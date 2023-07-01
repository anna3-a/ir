Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'posts#index'
  get 'posts/new' => 'posts#new'
  get 'tops/index' => 'tops#index'
  resources :posts do
    resources :likes, only: [:create, :destroy]
  end
  post 'posts' => 'posts#create'
  patch 'posts/:id' => 'posts#update'
  end