Rails.application.routes.draw do
  resources :users
  resources :books
  get 'hola', to: "welcome#hello"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
