Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :rooms do
    resources :reservations, only: [:new, :create, :destroy]
  end
end
