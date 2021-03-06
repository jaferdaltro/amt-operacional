Rails.application.routes.draw do
  get 'supervisions/cars'
  get 'supervisions/stuffs'
  get 'supervisions/people'
  get 'supervisions/division'
  get 'supervisions/calls'
  resources :groups
  root  'articles#index'
  
  get  '/about',     to: 'static_pages#about'
  get  '/contact',     to: 'static_pages#contact'
  get 'home',           to: 'static_pages#home'
  
  post  '/login',     to: 'sessions#create'
  get  '/login',     to: 'sessions#new'

  delete  '/logout', to: 'sessions#destroy'

  get 'switch', to: 'clocks#switch'
  patch 'clock_in', to: 'clocks#clock_in'
  patch 'clock_out', to: 'clocks#clock_out'





  resources :articles
  resources :services, only: [:index, :create, :new, :show]
  resources :users, only: [:new, :create, :show, :index, :edit, :update]
  
  resources :cars do
    resources :items do
      member do
        patch :ready
        patch :unready
      end
   end
  end
end
