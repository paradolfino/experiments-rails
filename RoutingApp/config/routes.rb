Rails.application.routes.draw do

  namespace :admin do #nesting
    get 'dashboard/main'
    get 'dashboard/user'
    get 'dashboard/blog'
  end

  get 'about', to: 'pages#about'

  #get 'contact', to: 'pages#contact'

  get 'leadgen/advertising/landingpage/lead', to: 'pages#contact', as: 'lead'

  root 'pages#home'
  resources :blogs

  #custom built resource routes
  get 'posts', to: 'posts#index', as: 'posts'
  get 'posts/:id', to: 'posts#show', as: 'post'
  get 'posts/new', to: 'posts#new', as: 'new_post'
  get 'posts/*missing', to: 'posts#missing'

  get 'query/:noen', to: 'pages#noen'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
