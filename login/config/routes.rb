Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #resources :users
  #resources :Password
  #root "users#show"
  get 'users/show', to: 'users#show'
  get 'users/create', to: 'users#create'
  get 'users/welcomepage', to: 'users#welcomepage'
  get 'users/error', to: 'users#error'
  get '/users/view', to: 'users#view'
end

