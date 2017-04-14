Rails.application.routes.draw do
  root "plans#index"

  resources :meals

  resources :plans

  resources :recipes

end
