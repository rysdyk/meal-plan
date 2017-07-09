Rails.application.routes.draw do
  resources :menus
  root "plans#index"

  resources :meals

  resources :plans

  resources :recipes
  
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  
  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  
  get '/healthy-eating' => 'pages#healthy'

end
