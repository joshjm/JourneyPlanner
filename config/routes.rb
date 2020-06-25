Rails.application.routes.draw do
  # dont need these routes, they are just auto generated
  # get 'session/new'
  # get 'session/create'
  # get 'session/destroy'

  get 'pages/home'

  get 'users/new'
  get 'users/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'welcome#index'


  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

end
