Rails.application.routes.draw do
  
  resources :admin_users
  resources :super_users
  resources :movie_tickets
  resources :theatres
  resources :locations
  resources :shows

    devise_for :users, path: 'users'
    devise_for :admins,path: 'admins'


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "tickets#home"
  # root "films#open"
  # post 'search', to: 'search#show'

  get '/movie_tickets/:movie_ticket_id/details', to: 'movie_tickets#detail', as: 'movie_ticket_detail'

  # scope :user do
  #   resources :movie_tickets 
  # end

  resources :movie_tickets do
    resources :seats 
    # resources :seats, only: [:update, :create]
  end

  # namespace :admins do
  #   resources :movie_tickets 
  # end
  
  get "locations/ticket", to: "locations#login"

  get "films/open", to: "films#open"
end
