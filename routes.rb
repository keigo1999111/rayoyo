Rails.application.routes.draw do
  post "likes/:post_id/create" => "likes#create"
  post "likes/:post_id/destroy" => "likes#destroy"

  get "login" => "users#login_form"
  post "login" => "users#login"

  post "logout" => "users#logout"

  post "users/:id/update" => "users#update"
  get "users/:id/edit" => "users#edit"
  post "users/create" => "users#create"
  get "signup" => "users#new"
  get 'users/index'
  get "users/:id" => "users#show"
  





  get "users/:id/likes" => "users#likes"

  get "/" => "home#top"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "posts/new" => "posts#new"
  get "posts/:id" => "posts#show"
  post "posts/create" => "posts#create"
  get "posts/:id/edit" => "posts#edit"
  post "posts/:id/update" => "posts#update"
  post "posts/:id/destroy" => "posts#destroy"

  get 'about' => "home#about"
  get "new_index" => "posts#new_index"
  get "ranking_index" => "posts#ranking_index"




end
