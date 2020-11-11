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
  get '/rooms/:id', to: 'rooms#show'
  post '/rooms', to: 'rooms#create'
  get '/rooms:id/edit', to: 'rooms#edit'
  put 'rooms/:id', to: 'rooms#update'
  patch 'rooms/:id/', to: 'rooms#update'
  delete '/rooms/:id', to: 'rooms#destroy'



  ###############colors

  get '/colors', to: 'colors#index'
  post '/colors', to: 'colors#create'
 


  ###############collection

  get '/collections', to: 'collections#index'
  # post '/colllections', to: 'collections#create'
  
 


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
