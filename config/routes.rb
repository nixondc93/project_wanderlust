Rails.application.routes.draw do

  root 'site#index'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  get '/users/:name' => 'users#show'
  get '/profile' => 'users#profile'
  get '/edit' => 'users#edit'
  put '/profile' => 'users#update'
  patch '/profile' => 'users#update'
  delete '/profile' => 'users#delete'

  get '/cities' => 'cities#index'
  get '/cities/:name' => 'cities#show', as: 'city'

  get '/posts/new' => 'posts#new', as: 'new_post'
  post '/posts' => 'posts#create', as: 'create_post'
  get '/posts/:title' => 'posts#show', as: 'post'
  get '/posts/:title/edit' => 'posts#edit', as: 'edit_post'
  put '/posts/:title/edit' => 'posts#update'
  patch '/posts/:title/edit' => 'posts#update'
  delete '/posts/:title' => 'posts#delete'

  resource :comments
end
