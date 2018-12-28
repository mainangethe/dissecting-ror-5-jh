Rails.application.routes.draw do
  
  resources :comments
  devise_for :users, path: '', path_names: {sign_in: 'login', sign_out: 'logout', sign_up: 'register'}
  
  resources :portfolios, except: [:show]  do
    put :sort, on: :collection
  end
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  get 'angular', to: 'portfolios#angular', as: 'portfolio_angular'
  get 'rails', to: 'portfolios#rails', as: 'portfolio_rails'
  
  get 'about-us', to: 'pages#about'
  get 'hire-us', to: 'pages#contact'

  resources :blogs do
  	member do
  		get :toggle_status
  	end
  end


  mount ActionCable.server => '/cable'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'pages#home'
end
