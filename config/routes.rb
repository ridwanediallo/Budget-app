Rails.application.routes.draw do
  root "pages#home"
  # resources :group_entities
  # get 'pages/home'
  devise_for :users

  resources :groups do
    resources :entities
  end
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
end
