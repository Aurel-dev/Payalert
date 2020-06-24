Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/profile", to: "profile#show"



 # url "payalert/search"
  get "/search", to: "pages#search"
  # url "payalert/products" controller pages
  get "/products", to: "products#index"

resources :users do 
  resources :profile
end
end
