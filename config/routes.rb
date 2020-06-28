Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

resources :products do
resources :paylerts ,only: [:create , :new]

end

 # url "payalert/search"
  get "/search", to: "pages#search"
  get "/profile", to: "profile#show"
  get "/validate", to: "pages#validate"
  # url "payalert/products" controller pages
  #routes pour login/log out
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'

resources :users do 
  resources :profile
end
end
