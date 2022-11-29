Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :ingredients

  resources :menu_items do
    resources :recipes, only: [:create]
  end

  resources :recipes, only: %i[update destroy]
  resources :order_items, only: [:index]
end
