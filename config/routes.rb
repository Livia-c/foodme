Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ('/')
  # root 'articles#index'

  resources :ingredients

  resources :menu_items do
    resources :recipes, only: [:create]
  end
  resources :recipes, only: %i[destroy]
  get 'menu_items/:id/upload_pictures', to: 'menu_items#upload_pictures', as: :upload_pictures

  resources :menu_item_customers, only: %i[index show]

  resources :order_items, only: %i[index create add_quantity reduce_quantity destroy]
  resources :orders

  get '/order_items/completed_orders', to: 'order_items#completed_orders', as: 'completed_orders'
  post 'order_items/:id/add' => "order_items#add_quantity", as: "order_item_add"
  post 'order_items/:id/reduce' => "order_items#reduce_quantity", as: "order_item_reduce"
  get '/order/:id/order_placed', to: 'orders#order_placed', as: 'placed'

end
