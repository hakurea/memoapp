Rails.application.routes.draw do
  root 'posts#index'

  get '/help' => 'hello#help'

  get '/about' => 'hello#about'

  # get '/posts/new' => 'posts#new'

  # post '/posts' => 'posts#create'

  # get '/posts' => 'posts#index'

  # get '/posts/edit' => 'posts#edit'

  # get '/posts/:id' => 'posts#show'

  resources :posts

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
