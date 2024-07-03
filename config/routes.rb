Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Defines the root path route ("/")
  # root "articles#index"

  resources :users, only: %i[new create]

  get 'signin', to: 'user_sessions#new'
  post 'signin', to: 'user_sessions#create'

  root 'top#top'
end
