Rails.application.routes.draw do

  root :to => 'pages#index'

  # get '/index', to: 'pages#index'
  # get '/about', to: 'pages#about'
  # get '/news', to: 'pages#news'
  # get '/works', to: 'pages#works'
  # get '/contact', to: 'pages#contact'
  # get '/news_detail/:id', to:'pages#news_detail'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :admin do
    resources :users
    # resources :news
    # resources :works
    # resources :links
    # get 'sessions/new'
    # post 'sessions/create', to: 'sessions#create'
    # delete 'sessions/destroy',to: 'sessions#destroy'
    # root 'dashboard#index'
  end

  
end
