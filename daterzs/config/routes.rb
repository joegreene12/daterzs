Rails.application.routes.draw do
  root 'situations#index'


  get 'situations' => 'situations#index'
  get 'situations/new' => 'situations#new'
  get 'situations/create' => 'situations#create'
  post 'situations/update' => 'situations#update'
  patch 'situations/delete' => 'situations#delete'
  get 'situations/confirmation' => 'situations#confirmation'

  get 'users/login' => 'sessions#login'
  post 'users/login_confirmation' => 'sessions#confirmation'
  get 'users/logout' => 'sessions#logout'

  get 'users/signup' => 'users#signup'
  post 'users/confirmation' => 'users#confirmation'

end
