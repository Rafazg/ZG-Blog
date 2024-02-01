Rails.application.routes.draw do
  resources :posts

  devise_for :users
  
  get 'about', to: 'pages#about'

  get "up" => "rails/health#show", as: :rails_health_check

  get 'tags/:id/posts', to: 'tags#posts', as: :tag_posts


  root to: 'pages#home'
  
end
