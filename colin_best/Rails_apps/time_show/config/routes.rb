Rails.application.routes.draw do
  root 'times#index'
  get 'times/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
