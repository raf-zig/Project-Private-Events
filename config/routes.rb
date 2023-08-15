Rails.application.routes.draw do
  get '/users/:id', to: 'users#show'
  devise_for :users
  #get 'events/index'
  #get 'events/new'
  resources :events, only: [:index, :new]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "events#index"
end
