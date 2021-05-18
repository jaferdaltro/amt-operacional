Rails.application.routes.draw do
  root  'sessions#new'
  
  get  '/about',     to: 'static_pages#about'
  get  '/contact',     to: 'static_pages#contact'
  get 'home',           to: 'static_pages#home'
  
  post  '/login',     to: 'sessions#create'
  delete  '/logout', to: 'sessions#destroy'

  get 'welcome/index'

  get 'point', to: 'jobs#point'
  put 'start_job', to: 'jobs#start_job'
  put 'finish_job', to: 'jobs#finish_job'

 


 

  resources :services, only: [:index, :create, :new]
  resources :users, only: [:new, :create, :show, :index]
  resources :cars do
    resources :items do
      member do
        patch :ready
        patch :unready
      end
   end
  end
end
