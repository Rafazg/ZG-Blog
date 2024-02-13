Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  resources :posts do
    resources :comments
  end


  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    
  }


  get 'about', to: 'pages#about'

  get "up" => "rails/health#show", as: :rails_health_check

  get 'tags/:id/posts', to: 'tags#posts', as: :tag_posts


  root to: 'pages#home'
  
end
