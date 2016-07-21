Rails.application.routes.draw do
  resources :users do
  	member do
  		get :following, :followers
  	end
  end
  resources :sessions,      only: [:new, :create, :destroy]
  resources :relationships, only: [:create, :destroy]

  root "static_pages#home"
  match "/signup",  to: "users#new",            via: "get"
  match "/signin",  to: "sessions#new",         via: "get"
  match "/signout", to: "sessions#destroy",     via: "delete"
  match "/help",    to: "static_pages#help",    via: "get"
  match "/about",   to: "static_pages#about",   via: "get"
end
