Rails.application.routes.draw do
  get 'users/show'
  get 'users/index'
  get 'users/edit'
  get 'users/update'
  devise_for :users
end
