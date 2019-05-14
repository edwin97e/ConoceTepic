Rails.application.routes.draw do
  devise_for :users
  resources :typeofusers
  resources :routes
  resources :sites
  resources :categories
  resources :events
  resources :users

  get 'send/create'
  post 'users/create'

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
