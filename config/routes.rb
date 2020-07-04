Rails.application.routes.draw do

  resources :milestones
  resources :projects
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  root to: 'pages#home'
  
end
