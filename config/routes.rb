Rails.application.routes.draw do
  resources :cinema_seats
  resources :cinema_halls
  resources :cinemas
  resources :cities
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
