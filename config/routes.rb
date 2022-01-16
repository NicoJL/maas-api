Rails.application.routes.draw do
  resources :days
  resources :engineers
  resources :services
  namespace :api do
  	resources :users
  	resources :services
  	resources :engineers
    resources :days
    resources :service_days
  	post 'login', to: 'authentication#login'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
