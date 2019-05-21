Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cases, only: [ :index, :show ] do
    resources :questions, only: [ :index ]
  end
  resources :questions, only: :show do
    resources :answers, only: [ :new, :create ]
  end
  resources :answers, only: :show
  resources :orders, only: [:show, :create]
  resources :orders, only: [:show, :create] do
    resources :payments, only: [:new, :create]
  end
  get 'dashboard', to: 'profiles#dashboard'
  get 'skills', to: 'profiles#skills'
  get 'industries', to: 'profiles#industries'
  get 'knowledge', to: 'profiles#knowledge'
  get 'tracking', to: 'profiles#tracking'
  get 'follow/:id', to: 'companies#follow', as: :follow
  get 'unfollow/:id', to: 'companies#unfollow', as: :unfollow
  get 'voting/:id', to: 'answers#voting', as: :voting
end
