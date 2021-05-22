Rails.application.routes.draw do

 devise_for :users

 devise_scope :user do
   post 'users/guest_sign_in', to: 'users/sessions#guest_sign_in'
 end

 resources :seasons, only: [:new, :create, :edit, :destroy]
 patch '/seasons/:id', to: 'seasons#update'

 resources :genres, only: [:new, :create, :edit, :destroy]
 patch '/genres/:id', to: 'genres#update'

 resources :dresses, param: :id, only: [:new, :create, :index, :show, :edit, :destroy]
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
  get "/about" => "homes#about"
  get "list" => "homes#list"
end
