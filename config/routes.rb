Rails.application.routes.draw do

  

  resources :projects do
    resources :milestones do
        get 'toggle_status', :on => :member
    end
  end
  
  mount Commontator::Engine => '/commontator'

  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  get 'profile', to: 'users#show'
  get 'about', to: 'pages#about'
  get 'howitworks', to: 'pages#howitworks'
  get 'contact', to: 'pages#contact'
  get 'privacypolicy', to: 'pages#privacypolicy'
  get 'cookiepolicy', to: 'pages#cookiepolicy'
  root to: 'pages#home'
  
end
