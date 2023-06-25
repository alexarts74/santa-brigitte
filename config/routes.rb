Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :rooms
  resources :reservations, only: [:new, :create, :destroy]
  resources :reservations, only: %i[new create]


  get '/my_account', to: 'users#my_account'
  # get '/contact', to: 'reservations#create'
end
