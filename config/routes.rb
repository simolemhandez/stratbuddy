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
  get 'dashboard', to: 'profiles#dashboard'
  get 'knowledge', to: 'profiles#knowledge'
  get 'voting/:id', to: 'answers#voting', as: :voting
end
