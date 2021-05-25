Rails.application.routes.draw do
  # get '/articles' => 'articles#index'
  # get '/articles/new' => 'articles#new'
  # post '/articles' => 'articles#create', as: 'article_create'

  get '/users' => 'users#index', as: 'users'
  get '/users/new' => 'users#new', as: 'new_user'
  post '/users' => 'users#create', as: 'create_user'

  resources :articles do
    resources :comments
  end

end
