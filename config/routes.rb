Rails.application.routes.draw do
  resources :articles
  resources :tags
  resources :authors
  resources :author_sessions, only: [ :new, :create, :destroy ]
  
  get 'login'  => 'author_sessions#new'
  get 'logout' => 'author_sessions#destroy'
end
