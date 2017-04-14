Rails.application.routes.draw do
  root "meals#index"

  resources :meals, as: :meals
end
