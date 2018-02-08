Rails.application.routes.draw do

  root :to => 'pages#login'
  get '/login', to: 'pages#login'
  # get '/about', to: 'pages#about'
  # get '/news', to: 'pages#news'
  # get '/works', to: 'pages#works'
  # get '/contact', to: 'pages#contact'
  # get '/news_detail/:id', to:'pages#news_detail'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
end
