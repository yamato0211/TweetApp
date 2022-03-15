Rails.application.routes.draw do
  devise_for :users
  post "posts/create" => "posts#create"
  post "posts/:id/update" => "posts#update"
  get 'posts/index' => "posts#index"
  get 'posts/new' => "posts#new"
  get "posts/:id" => "posts#show"
  get "posts/:id/edit" => "posts#edit"
  post "posts/:id/destroy" => "posts#destroy"
  root to: "home#top"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
