Rails.application.routes.draw do
  get 'sessions/new'
  root 'static_pages#home'

  get 'posts/new-zealand', to: 'posts#index_nz', as: "new_zealand"
  get 'posts/thailand', to: 'posts#index_th', as: "thailand"
  get 'posts/laos', to: 'posts#index_la', as: "laos"
  get 'posts/vietnam', to: 'posts#index_vi', as: "vietnam"

  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :users

  resources :posts
end
 
