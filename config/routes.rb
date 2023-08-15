Rails.application.routes.draw do
  root "events#index"
  devise_for :users
  get '/users/:id', to: 'users#show'
  resources :events
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
end
