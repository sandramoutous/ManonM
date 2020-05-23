Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  root to: 'pages#home'

  get 'about', to: 'pages#about'

  namespace :admin do
    root to: 'pages#home'

    resources :users
  end
end
