Rails.application.routes.draw do
  resources :admin_users
  resources :super_users
  # resources :movie_tickets
  resources :theaters, only: [:new, :create]

  devise_for :users


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "tickets#login"
  # root "films#open"

  scope :admin do
    resources :movie_tickets
  end 

  namespace :ticket do
    resources :movie_tickets 
  end

  # resources :users do
  #   resources :movie_tickets do
  # end

  get "locations/home", to: "locations#home"
  get "films/open", to: "films#open"
end
