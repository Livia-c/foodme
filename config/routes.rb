Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :ingredients, only: [:index]
  resources :menu_items, only: [:index]
  resources :order_items, only: [:index]
end
