Rails.application.routes.draw do
  get 'home/hello'
  devise_for :users
  # get 'events/index'
  # get 'events/new'
  # # get 'events/create'
  # post '/events' => 'events#create' 
  # get 'events/:id' => 'events#show'
  
  resources :events, only: [:index, :new, :create, :show]
  # resources :events, only: [:index, :show, :create]
  
  # root :to => "tickets#index"
  resources :tickets
  
  root to: "home#hello"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
