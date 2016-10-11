Rails.application.routes.draw do
  
  mount ActionCable.server => '/cable'

  devise_for :users
  resources :messages
  resources :chatrooms

  root 'chatrooms#index'
end
