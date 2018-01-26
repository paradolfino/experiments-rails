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
  get 'posts', to: 'posts#index' as: 'posts'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
