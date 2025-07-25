Rails.application.routes.draw do
  root 'products#index'
  get 'about', to: 'pages#about'

  resources :products, only: [:index, :show] do
    resources :reviews, only: [:index]
  end

  resources :reviews, only: [:show]
end