Rails.application.routes.draw do
  resources :collections
  resources :colors
  # resources :rooms
  resources :users


###############users

  # get '/users', to: 'users#index'
  # post '/users', to: 'users#create'
  post '/users/login', to: 'users#login'


  ################rooms

  get '/rooms', to: 'rooms#index'
  post '/rooms', to: 'rooms#create'


  ###############colors

  # get '/colors', to: 'colors#index'
  # post '/colors', to: 'colors#create'
 


  ###############collection

  # get '/collections', to: 'collections#index'
  # post '/colllections', to: 'collections#create'
 


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
