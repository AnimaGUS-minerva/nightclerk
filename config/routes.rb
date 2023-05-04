Rails.application.routes.draw do
  resources :activities
  #resources :owners
  resources :appliances

  # Defines the root path route ("/")
  # root "articles#index"
end
