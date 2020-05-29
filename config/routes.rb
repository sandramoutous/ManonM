Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  root to: 'pages#home'
  get 'about', to: 'pages#about'
  resources :services

  namespace :admin do
    root to: 'pages#home'
    resources :users
    resources :services
  end
end
