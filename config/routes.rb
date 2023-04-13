Rails.application.routes.draw do
  # get 'performs/new'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html get 'spectacles/:index'

  root to: "spectacles#index"
  resources :spectacles do
    resources :performs, only: [:new, :create, :index]
  end


  # get 'spectacles', to: 'spectacles#index'
  # get 'spectacles/new', to: 'spectacle#new', as: :new_spectacle
  # post 'spectacles/create', to: 'spectacles#create'
  # get 'spectacles/:id', to: 'spectacles#show', as: :spectacle
  # Defines the root path route ("/")
  # root "articles#index"x
end
