Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get '/components', to: 'components#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get '/dashboard', to: 'pages#dashboard', as: :dashboard

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

  resources :chatrooms, only: [:show, :index] do
    resources :messages, only: :create
  end

end
