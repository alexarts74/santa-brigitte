Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :rooms
  resources :reservations, only: [:new, :create, :destroy]


  get '/my_account', to: 'users#my_account'
  get '/contact', to: 'reservations#contact'
end
