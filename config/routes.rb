Rails.application.routes.draw do
  get 'components/index'
  devise_for :users
  root to: "pages#home"
  get '/components', to: 'components#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
