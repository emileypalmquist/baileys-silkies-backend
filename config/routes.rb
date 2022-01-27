Rails.application.routes.draw do
  resources :available_chickens, only: [:index, :create, :destroy]
  resources :coops, only: [:index, :show, :create]
  post '/login', to: 'admins#create'
  get '/reAuth', to: 'admins#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
