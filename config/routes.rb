Rails.application.routes.draw do
  get 'home', to: 'static#home'
  post '/products/new', to: 'products#create'
  resources :orders
  resources :invoices
  resources :products, only: [:show, :index, :new, :create]
end
