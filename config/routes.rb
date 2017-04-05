Rails.application.routes.draw do


  root :to => 'pages#index'
  
  get '/index', to: 'pages#index'
  get '/about', to: 'pages#about'
  get '/news', to: 'pages#news'
  get '/contact', to: 'pages#contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :news, :only=>[:index, :show]
  resources :works, :only=>[:index, :show]
  resources :links, :only=>[:index, :show]

  
end
