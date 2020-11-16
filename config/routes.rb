Rails.application.routes.draw do
  devise_for :users
  root to: 'posts#index'
  resources :posts do
    resources :likes, only: [:create, :destroy]
    collection do
      get 'search'
      get 'squeeze'
      get 'post_search'
    end
  end
  resources :users, only: :show
end
