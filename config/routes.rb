Rails.application.routes.draw do
  root  'sessions#new'
  
  get  '/about',     to: 'static_pages#about'
  get  '/contact',     to: 'static_pages#contact'
  
  post  '/login',     to: 'sessions#create'
  delete  '/logout', to: 'sessions#destroy'

  get 'welcome/index'

  resources :users, only: [:new, :create, :show]
  resources :cars do
    resources :items do
      member do
        patch :ready
        patch :unready
      end
   end
  end
end
