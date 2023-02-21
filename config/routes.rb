Rails.application.routes.draw do
  resources :admin_users
  resources :super_users
  # resources :movie_tickets
  resources :theatres
  resources :locations
  resources :shows

  scope "admin_user" do
    devise_for :users 
  end 



  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "tickets#home"
  # root "films#open"
  # post 'search', to: 'search#show'

  scope "admin_user" do
    resources :movie_tickets
  end 

  # namespace :admin_user do
  #   resources :movie_tickets 
  # end

  # resources :users do
  #   resources :movie_tickets do
  # end

  get "locations/ticket", to: "locations#login"

  get "films/open", to: "films#open"
end
