Rails.application.routes.draw do
  devise_for :users
  root "posts#index"
  post "likes/:post_id/create" => "likes#create"
  post "likes/:post_id/destroy" => "likes#destroy"

  resources :posts do
    resources :comments, only: :create
  end
end
