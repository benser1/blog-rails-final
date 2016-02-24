Rails.application.routes.draw do
 
  resources :categories
  resources :all, only: [:index]
  resources :comments
  resources :posts, only: [:new, :edit, :create, :update, :destroy]
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  resources :users, only: [:show] do 
    resources :posts, only: [:show, :index]
  end

  root 'welcome#home'

end ## routes end
