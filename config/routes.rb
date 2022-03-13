Rails.application.routes.draw do
  post "posts/create" => "posts#create"
  get 'posts/index' => "posts#index"
  get 'posts/new' => "posts#new"
  get "posts/:id" => "posts#show"
  get '/' => "home#top"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
