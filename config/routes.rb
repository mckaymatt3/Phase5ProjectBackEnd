Rails.application.routes.draw do
  
  #create access to routes for rooms
  resources :rooms
  
  # changed from get pages/home to root pages#home
  root 'pages#home'
  
  devise_for :users
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  devise_scope :user do
    get 'users', to: 'devise/sessions#new' 
  end

  get 'user/:id', to: 'users#show', as: 'user'

  # Defines the root path route ("/")
  # root "articles#index"
end
