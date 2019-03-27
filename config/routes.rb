Rails.application.routes.draw do
  get "posts/index" => "posts#index"
  get "posts/new" => "posts#new"
  get "posts/:id" => "posts#show"
  post "posts/create" => "posts#create"

  get "bands/index" => "bands#index"
  get "bands/new" => "bands#new"
  get "bands/:id" => "bands#show"
  post "bands/create" => "bands#create"
  
  get "/" => "home#top"
  get "/about" => "home#about"
end
