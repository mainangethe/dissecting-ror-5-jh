Rails.application.routes.draw do
  resources :portfolios
  
  get 'about-us', to: 'pages#about'
  get 'hire-us', to: 'pages#contact'

  resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'pages#home'
end
