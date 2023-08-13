Rails.application.routes.draw do
  get '/users/:id', to: 'users#show'
  devise_for :users
  get 'events/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "events#index"
end
