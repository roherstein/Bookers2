Rails.application.routes.draw do
  root to: 'homes#top'
  devise_for :users
  resources :users, only: [:show,:edit,:index,:update]
  #get 'users/show'
  #get 'users/edit'
  resources :books, only: [:new,:index,:show,:edit,:create,:update,:destroy]
  #get 'books/new'
  #get 'books/index'
  #get 'books/show'
  #get 'books/edit'
  # get 'homes/top'
  get 'home/about' => 'homes#about', as: 'about'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
