Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'events#index'

  resources :users, only: [:show]

  resources :events, only: %i[index new create show edit update destroy] do
    resources :attendances, only: %i[index new create destroy]
  end
end
