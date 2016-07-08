Rails.application.routes.draw do
  resources :users
  resources :sessions,      only: [:new, :create, :destroy]

  root "static_pages#home"
  match "/signup",  to: "users#new",            via: "get"
  match "/signin",  to: "sessions#new",         via: "get"
  match "/help",    to: "static_pages#help",    via: "get"
  match "/about",   to: "static_pages#about",   via: "get"
end
