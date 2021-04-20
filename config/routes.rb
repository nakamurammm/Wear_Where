Rails.application.routes.draw do
  get '/search' => "search#search"
 devise_for :users
 resources :seasons, only: [:new, :create, :edit, :destroy]
 patch '/seasons/:id', to: 'seasons#update'

 resources :genres, only: [:new, :create, :edit, :destroy]
 patch '/genres/:id', to: 'genres#update'

 resources :dresses, only: [:new, :create, :index, :show, :edit, :destroy]
 patch '/dresses/:id', to: 'dresses#update'

 resources :posts, only: [:new, :create, :index, :show, :destroy] do
   resource :favorites, only: [:create, :destroy]
  end
 resources :post_images, only: [:new, :create, :index, :show, :destroy]

 resources :children, only: [:new, :create, :index, :show, :edit, :destroy]
 patch '/children/:id', to: 'children#update'

 resources :users, only: [:new, :create, :edit, :destroy]
 patch '/users/:id', to: 'users#update'
 get "/users/my_page" => "users#show"


  get "/" => "homes#top"
end
