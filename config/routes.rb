Rails.application.routes.draw do

  resources :news
  root 'static_pages#home'
  get 'static_pages/home'

  resources :microcontroladors
  resources :reportes
  resources :planta
  resources :huerta
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
