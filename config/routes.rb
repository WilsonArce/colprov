Rails.application.routes.draw do
  resources :orders
  resources :products

  root 'home#index'
  get "/home/providers" => "home#providers", :as => :providers
  get "/home/my_providers" => "home#my_providers", :as => :my_providers
  get "/home/my_products" => "home#my_products", :as => :my_products

  match "/home/show_provider/:id" => "home#show_provider", :as => :show_provider, via: [:get, :post]

  post "/home/select_provider/:id" => "home#select_provider", :as => :select_provider
  post "/home/delete_provider/:id" => "home#delete_provider", :as => :delete_provider

  devise_for :users, controllers:{ registrations: 'users/registrations', sessions: 'users/sessions'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
