Rails.application.routes.draw do
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  get '/login', to: 'session#new', as: 'login'
  post '/login', to: 'session#create'
  get '/signup', to: 'users#new', as: 'signup'
  root 'session#new'
end
