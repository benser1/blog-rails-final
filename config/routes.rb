Rails.application.routes.draw do
 
  resources :categories
  resources :comments
  resources :posts, only: [:new, :edit, :create, :update, :destroy]
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  resources :users, only: [:show] do 
    resources :posts, only: [:show, :index]
  end

  get '/all', to: 'posts#all'

  # get '/posts/:id', to: 'posts#show', as: 'users/id/posts/id'

  # get '/users/:user_id/posts/:id' => 'posts#show'


  root 'welcome#home'

end ## routes end
