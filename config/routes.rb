Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }
  get 'cats/index'
  root to: "cats#index"
  resources :cats, only: [:new, :create, :show, :edit, :update, :destroy]
  resources :users, only: [:show]
end
