Rails.application.routes.draw do
  get '/search' => "search#search"
 devise_for :users
 resources :seasons, only: [:new, :create, :edit, :destroy]
 patch '/seasons/:id', to: 'seasons#update'

 resources :genres, only: [:new, :create, :edit, :destroy]
 patch '/genres/:id', to: 'genres#update'

 resources :dresses, only: [:new, :create, :index, :show, :edit, :destroy]
 patch '/dresses/:id', to: 'dresses#update'

 resources :post_images, only: [:new, :create, :index, :show, :destroy] do
   resource :favorites, only: [:create, :destroy]
   resources :post_comments, only: [:create, :destroy]
  end


 resources :children, only: [:new, :create, :index, :show, :edit, :destroy]
 patch '/children/:id', to: 'children#update'

 resources :users, only: [:new, :create, :edit, :show, :destroy]
 patch '/users/:id', to: 'users#update'



  get "/" => "homes#top"
  get "list" => "homes#list"
end
