Rails.application.routes.draw do
  get "articles/home" => "articles#index"
  get "articles/1" => "articles#show"
  get "articles/new" => "articles#new"
  post "articles/create" => "articles#create"
end
