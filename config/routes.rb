Rails.application.routes.draw do
  get 'trips/index'
  get 'trips/new'
  post 'trips/new' => 'trips#create'
  get 'trips/view'
  get 'trips/edit'
  get 'trips/all' 
  # dont need these routes, they are just auto generated
  # get 'session/new'
  # get 'session/create'
  # get 'session/destroy'

  root :to => 'pages#home'

  get 'pages/home'

  resources :users, only: [:new, :create] # add some security
  get 'users/new'
  get 'users/create'


  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

end
