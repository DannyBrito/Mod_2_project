Rails.application.routes.draw do
  
  
  resources :likes
  resources :comments
  resources :posts
  resources :users

  get '/', to: "application#home"

  get '/login', to: "sessions#new"

  post '/login', to: "sessions#create"

  post '/logout', to: "sessions#destroy"

  get '/SignUp', to: "users#new"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
