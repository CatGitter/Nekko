Rails.application.routes.draw do
  devise_for :users
  get 'cats/index'
  root to: "cats#index"
  resources :cats, only: [:new, :create]
end
