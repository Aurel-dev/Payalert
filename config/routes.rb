Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

resources :products do
resources :paylerts ,only: [:create , :new]

end

 # url "payalert/search"
  get "/search", to: "pages#search"
  # url "payalert/products" controller pages
  

resources :users do 
  resources :profile
end
end
