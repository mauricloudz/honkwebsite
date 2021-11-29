Rails.application.routes.draw do
  root 'categories#index'
  
  resources :categories, only: %i[index] do
    resources :products, only: %i[index]
  end

  get '/cart', to: 'order_items#index'
  resources :order_items, path: '/cart/items'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
