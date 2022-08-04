Rails.application.routes.draw do
  get 'practice/index'
  # get 'users/index'
  # get 'users/show'
  # get 'users/new'
  # get 'users/edit'
  # get 'users/create'
  # get 'users/update'
  # get 'users/destroy'
  resources :acceptances, only: [:new, :create]
  resources :books
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


