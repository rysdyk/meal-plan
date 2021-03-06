Rails.application.routes.draw do
  root "recipes#index"

  resources :menus

  resources :recipes do
    post "add-to-menu", to: "recipes#add_to_menu"
  end
  
  resources :ingredients
  
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  
  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  
  get '/healthy-eating' => 'pages#healthy'

end
