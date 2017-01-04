Rails.application.routes.draw do

  root 'site#index'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  get '/users/:id' => 'users#show'
  get '/profile' => 'users#profile'
  get '/edit' => 'users#edit'
  put '/profile' => 'users#update'
  patch '/profile' => 'users#update'

  get '/cities' => 'cities#index'
  get '/cities/:name' => 'cities#show', as: 'city'

  get '/posts/new' => 'posts#new', as: 'newpost'
  post '/posts' => 'posts#create', as: 'createpost'
  get '/posts/:id' => 'posts#show', as: 'post'

end
