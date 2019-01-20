Rails.application.routes.draw do
  get 'topics/new'
  get 'sessions/new'
  root 'pages#index'

  get '/login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'login', to: 'sessions#destroy'


  resources :users
  resources :topics do
    resources :images
  end
end
