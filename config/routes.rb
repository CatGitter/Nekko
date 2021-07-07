Rails.application.routes.draw do
  get 'cats/index'
  devise_for :users
  root to: "cats#index"
end
