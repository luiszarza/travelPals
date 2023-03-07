Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  devise_for :users
  root to: "pages#home"

  get '/dashboard', to: 'pages#dashboard', as: :dashboard

  resources :activities do
    resources :bookings, :comments, only: :create
  end

  resources :bookings, only: :destroy do
    member do
      get :confirmation
    end
  end

  resources :users, only: :show

  resources :chats, only: [:show, :index]
end
