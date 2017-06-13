Rails.application.routes.draw do
  resources :audit_logs
  namespace :admin do
    resources :users
resources :installs
resources :posts
resources :admin_users

    root to: "users#index"
  end

  resources :posts

  devise_for :users
  devise_for :installs
   root to: 'static#homepage'  
end
