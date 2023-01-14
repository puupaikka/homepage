Rails.application.routes.draw do
  get 'articles/index'
  resources :users
  get '/users', to: 'users#index'
  get '/about', to: 'about#index'
  get '/concepts', to: 'concepts#index'
  get '/contact', to: 'contact#index'
  # get '/top', to: 'top#index'
  get '/column', to: 'column#index'
  get '/options', to: 'options#index'
   root "top#index"


  get "/articles", to: "articles#index"
  get "/articles/:id", to: "articles#show"
  resources :articles

  # Defines the root path route ("/")
  # root "articles#index"
  post '/contact', to: 'contact#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
