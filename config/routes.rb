Rails.application.routes.draw do
 resources :items 
  devise_for :users
  
  resources :charges
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/profile', to: 'profile#show'
  root to:'items#index'
end
