Rails.application.routes.draw do
  devise_for :users
  root to: 'posts#index'

  resources :posts do
    resources :likes, only: [:create, :destroy]
    collection do
      get 'search'
      get 'squeeze'
      get 'post_search'
      get 'ranking'
    end
  end

  resources :users, only: :show do
    member do
      get :following, :followers
      get 'likes'
    end
    collection do
      get 'time_line'
    end
  end

  resources :relationships, only: [:create, :destroy]
  resources :notifications, only: [:index, :destroy]
end
