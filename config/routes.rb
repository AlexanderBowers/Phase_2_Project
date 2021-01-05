Rails.application.routes.draw do
  resources :user_group_roles do
    collection do
      get :decimate
    end
  end
  resources :roles
  resources :group_raids
  resources :user_groups
  resources :groups do
    collection do
      get :finalize
    end
  end
  resources :users
  resources :raids
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy', as: 'logout'
  get '/signup', to: 'users#new', as: 'signup'
  root 'sessions#new'
end
