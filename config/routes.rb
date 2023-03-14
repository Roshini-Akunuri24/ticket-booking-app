Rails.application.routes.draw do
  
  resources :admin_users
  resources :super_users
  resources :movie_tickets
  resources :theatres
  resources :locations
  resources :shows
  resources :payments # do
  #   member do
  #     post 'share_payments'
  #   end
  # end
  # resources :booked_tickets

  # resources :payments

  get '/payments/:id/share_payments', to: 'payments#share_payment', as: 'payment_share_payment'
  # post '/payments/:id/share_payments', to: 'payments#share_payment', as: 'payment_share_payment'
   
    devise_for :users, path: 'users'
    devise_for :admins,path: 'admins'


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "tickets#home"
  # root "films#open"
  # post 'search', to: 'search#show'

  get 'users/movie_tickets/:id/details', to: 'movie_tickets#detail', as: 'movie_ticket_detail'


  scope :admins do
    resources :movie_tickets 
  end

  resources :movie_tickets do
    resources :seats do 
    end    # resources :seats, only: [:update, :create]
  end

  # #admins
  get "admins/new/movie_tickets", to: "movie_tickets#new"
  get "admins/movie_tickets", to: "movie_tickets#index"
  get "admins/movie_tickets/:movie_ticket_id", to: "movie_tickets#show"

  get "admins/new/shows", to: "shows#new"
  get "admins/shows", to: "shows#index"
  get "admins/shows/:show_id", to: "shows#show"

  get "admins/new/theatres", to: "theatres#new"
  get "admins/theatres", to: "theatres#index"

  get "admins/new/locations", to: "locations#new"
  get "admins/locations", to: "locations#index"


  #users

  get "users/new/movie_tickets", to: "movie_tickets#new"
  get "users/movie_tickets", to: "movie_tickets#index"

  resources :booked_tickets
  get "new/booked_tickets", to: "booked_tickets#new"
  get '/booked_tickets/:booked_ticket_key/confirmation', to: 'booked_tickets#confirmation', as: 'booked_ticket_confirmation'
  
  get "locations/ticket", to: "locations#login"

  get "films/open", to: "films#open"
end
