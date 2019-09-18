Rails.application.routes.draw do
  root to: "movies#index"
  get 'movies/ranking' => "movies#rank", as: "rank"
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  devise_for :users

  get 'movies/search' => 'movies#search'

  post '/like/:comment_id' => 'likes#like', as: 'like'
  delete '/like/:comment_id' => 'likes#unlike', as: 'unlike'

  post "/relationships/:user_id" => "relationships#follow", as: "follow"
  delete "/relationships/:user_id" => "relationships#unfollow", as: "unfollow"

  resources :comments, only: [:create,:edit,:update,:destroy]
  resources :movies, only: [:show]
  resources :users, only: [:index,:show,:update]
  resources :messages, :only => [:create]
  resources :rooms, :only => [:create,:show,:index]
  # resources :relationships, only: [:create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end