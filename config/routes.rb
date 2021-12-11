Rails.application.routes.draw do
  resources :available_chickens, only: [:index]
  resources :coops, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
