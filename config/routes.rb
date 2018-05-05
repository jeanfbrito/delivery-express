Rails.application.routes.draw do
  resources :route_clients
  resources :routes
  resources :sales
  resources :contacts
  resources :clients
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
