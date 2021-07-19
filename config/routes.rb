Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }
  get 'chat/:id' => 'chats#show', as: 'chat'
  get 'cats/index'
  root to: "cats#index"
  resources :cats, only: [:new, :create, :show, :edit, :update, :destroy]
  resources :users, only: [:show]
  resources :chats, only: [:create]
end
