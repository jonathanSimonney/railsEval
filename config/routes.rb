Rails.application.routes.draw do
  devise_for :users
  get '/super-page' => 'pages#show',  id: 'super-page'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'application#index'

  resources :comments, only: [:create]
  resources :gazooies, only: [:index, :show, :create]
  resources :hash_tags, only: [:show]
  resources :news
  resources :pages, except: [:index]



  get '/:id' => 'pages#show'
end
