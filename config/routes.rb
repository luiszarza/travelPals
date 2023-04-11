Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: "pages#home"
  get '/components', to: 'components#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get '/dashboard', to: 'pages#dashboard', as: :dashboard

  get '/users/:user_id/chat', to: 'chatrooms#new_chatroom_with_user', as: 'new_chatroom_with_user'


  resources :activities do
    collection do
      get :map
    end
    resources :bookings, :comments, only: [:create, :destroy]
  end

  resources :bookings, only: :destroy do
    member do
      get :confirmation
    end
  end

  resources :users, only: :show

  resources :chatrooms, only: [:new,:show, :index, :create] do
    resources :messages, only: :create
  end
end

# Path: app/controllers/pages_controller.rb
