Rails.application.routes.draw do
  resources :users, only: [:show,:edit]
  #get 'users/show'
  #get 'users/edit'
  resources :bookers, only: [:new,:index,:show,:edit]
  #get 'books/new'
  #get 'books/index'
  #get 'books/show'
  #get 'books/edit'
  get 'homes/top'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
