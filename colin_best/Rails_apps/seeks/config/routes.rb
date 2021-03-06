Rails.application.routes.draw do
  root 'sessions#index'
  resources :users, :sessions, :secrets, :likes

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

# Prefix Verb   URI Pattern               Controller#Action
#     root GET    /                         users#index
#    users GET    /users(.:format)          users#index
#          POST   /users(.:format)          users#create
# new_user GET    /users/new(.:format)      users#new
# edit_user GET    /users/:id/edit(.:format) users#edit
#     user GET    /users/:id(.:format)      users#show
#          PATCH  /users/:id(.:format)      users#update
#          PUT    /users/:id(.:format)      users#update
#          DELETE /users/:id(.:format)      users#destroy
