Rails.application.routes.draw do
  get "articles/home" => "articles#index"
  get "articles/new" => "articles#new"
  post "articles/create" => "articles#create"
  get "articles/:id" => "articles#show"
  get "articles/:id/edit" => "articles#edit"
  post "articles/:id/update" => "articles#update"
end
