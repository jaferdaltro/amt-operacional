Rails.application.routes.draw do
  root  'articles#index'
  
  get  '/about',     to: 'static_pages#about'
  get  '/contact',     to: 'static_pages#contact'
  get 'home',           to: 'static_pages#home'
  
  post  '/login',     to: 'sessions#create'
  get  '/login',     to: 'sessions#new'

  delete  '/logout', to: 'sessions#destroy'

  get 'welcome/index'

  get 'switch', to: 'clocks#switch_clock'
  put 'start_clock', to: 'clocks#start_clock'
  put 'finish_clock', to: 'clocks#finish_clock'
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
