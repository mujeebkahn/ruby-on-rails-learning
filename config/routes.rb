Rails.application.routes.draw do
  # first part is the request, goes to path and it indicates an about controller with method index in it
  #in rails its optional to add the / in the begining e.g. /about


  get "password", to: "passwords#edit", as: :edit_password
  patch "password", to: "passwords#update"
  
  get "about-us", to: "about#index", as: :about

  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#create"
  
  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"

  delete "logout", to: "sessions#destroy"

  get "password/reset", to: "password_reset#new"
  post "password/reset", to: "password_reset#create"
  get "password/reset/edit", to: "password_reset#edit"
  patch "password/reset/edit", to: "password_reset#update"
  # we can also do routing like above e.g. '/' or just we can write a special keyword like 'root' it will take care of empty string by itself
  root to: "main#index"
end
