Rails.application.routes.draw do
  
  resources :event_attendances
  devise_for :users
  get '/users/:id', to: 'users#show'

  resources :events
  root "events#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
end
