Rails.application.routes.draw do
  resources :post1s
  devise_for :users
  devise_for :installs
   root to: 'static#homepage'  
end
