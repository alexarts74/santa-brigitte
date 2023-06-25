Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :rooms do
    resources :reservations, only: [:new, :create, :destroy]
  end
  get '/my_account', to: 'users#my_account'
  get '/contact', to: 'users#contact'
end
