  Rails.application.routes.draw do

  get '/' => 'sessions#welcome'
  get '/about' => 'sessions#about'
  get '/shop' => 'sessions#shop'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/signup' => 'users#new'
  get '/signup' => 'users#create'
  delete '/logout' => 'sessions#destroy'
  

  resources :reviews
  resources :events do
    resources :reviews, only: [:new, :index]
  end


  resources :rsvps
  resources :events do
    resources :rsvps, only: [:new, :index]
  end

  resources :businesses
  resources :users, only: [:show]

  resources :users
  
end
