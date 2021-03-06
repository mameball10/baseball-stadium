Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'toppages#index'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :new, :create, :edit, :update] do
    member do
      get :likes
      get :myteams
      get :featured
    end
  end
  
  resources :messages, only: [:create, :destroy]
  resources :favorites, only: [:create, :destroy]
  resources :posts, only: [:create, :destroy]
  resources :myplayers, only: [:create, :destroy]
end
