Rails.application.routes.draw do
 

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root 'users#index'
  # get "show/:id" => 'users#show', as: 'user'
  
  get "post/:id" => 'posts#index', as: 'posts_path'
  # get "post/:id" => 'post#show'
  resources :users, only: [:index, :show] do
    resources :posts, only: [:index, :show] 
  end
end
