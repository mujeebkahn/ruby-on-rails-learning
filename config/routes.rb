Rails.application.routes.draw do
  # first part is the request, goes to path and it indicates an about controller with method index in it
  #in rails its optional to add the / in the begining e.g. /about
  get "about-us", to: "about#index", as: :about

  # we can also do routing like above e.g. '/' or just we can write a special keyword like 'root' it will take care of empty string by itself
  root to: "main#index"
end
