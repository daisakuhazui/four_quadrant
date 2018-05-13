Rails.application.routes.draw do
  get 'static_pages/about'
  get 'static_pages/help'
  get 'static_pages/history'

  root to: "tasks#index"
  devise_for :users
  resources :tasks, only: [:index, :new, :create, :destroy]
  get "static_pages/index"
end
