Rails.application.routes.draw do

 
  root  'sessions#new'
  
  get  '/about',     to: 'static_pages#about'
  get  '/contact',     to: 'static_pages#contact'
  
  post  '/login',     to: 'sessions#create'
  delete  '/logout', to: 'sessions#destroy'

  resources :users
  resources :check_lists, only:[:index, :show, :update, :new, :create]
  resources :check_list_items, only:[:index, :create, :show, :new, :edit, :update]
  resources :vehicles, only: [:index, :create, :show, :new, :edit, :update]
end
