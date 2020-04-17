Rails.application.routes.draw do
  get 'sessions/new'
  
  root 'static_pages#home'
  get '/about', to: 'static_pages#about' 
  
  resources :users
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
end
