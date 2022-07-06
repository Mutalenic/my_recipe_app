Rails.application.routes.draw do
  devise_for :user
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :recipes
  resources :foods
  resources :food_recipes
  # Defines the root path route ("/")
  # root "articles#index"
  resources :users, only: [:index, :show] do
  end
  root "users#index"
end
