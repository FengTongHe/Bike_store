Rails.application.routes.draw do
  resources :addresses
  get "shipping_info/show"
  get "about_page/index"
  get "products/cart", to: "products#cart"
  get "cart", to: "cart#show"

  post "cart/add"
  post "cart/remove"

  post "address/tax"

  resources :shipping_info
  resources :products
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :customers
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "products#index"

  # resources :cart, only: %i[create destroy]
end
