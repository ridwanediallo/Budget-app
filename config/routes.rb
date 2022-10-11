Rails.application.routes.draw do
  resources :group_entities
  # get 'pages/home'
  devise_for :users
  resources :groups
  resources :entities
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#home"
end
