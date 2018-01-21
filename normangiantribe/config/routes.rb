Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'main#home'
  get 'about', to: 'main#about'
  resources :posts
  resources :users, except: [:new]
  resources :msgs
  get 'join', to: 'users#new'
  post 'users', to: 'users#create'
end
