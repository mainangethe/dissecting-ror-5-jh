Rails.application.routes.draw do
  devise_for :users
  resources :portfolios, except: [:show]
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



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'pages#home'
end
