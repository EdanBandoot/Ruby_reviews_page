Rails.application.routes.draw do
  get "erd/show"
  root 'products#index'
  get 'about', to: 'pages#about'

  resources :products, only: [:index, :show] do
    resources :reviews, only: [:index]
  end

  resources :reviews, only: [:show]
end