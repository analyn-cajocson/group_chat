Rails.application.routes.draw do
  devise_for :users
  root 'chatroom#index'
  post '/message' => 'messages#create', as: 'send_message'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  mount ActionCable.server, at: '/cable'
end
