Rails.application.routes.draw do
  resources :activities, only: [:show]
  resources :appliances, only: [:create]

  # Defines the root path route ("/")
  # root "articles#index"
end
