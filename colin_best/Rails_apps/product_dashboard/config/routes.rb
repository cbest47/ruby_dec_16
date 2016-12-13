Rails.application.routes.draw do
  root 'products#index'
  resources :products 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

#
# Prefix Verb   URI Pattern                  Controller#Action
#      root GET    /                            products#index
#  products GET    /products(.:format)          products#index
#           POST   /products(.:format)          products#create
# new_product GET    /products/new(.:format)      products#new
# edit_product GET    /products/:id/edit(.:format) products#edit
#   product GET    /products/:id(.:format)      products#show
#           PATCH  /products/:id(.:format)      products#update
#           PUT    /products/:id(.:format)      products#update
#           DELETE /products/:id(.:format)      products#destroy
