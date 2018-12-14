Rails.application.routes.draw do
  devise_for :users

  resources :articles, only: [:new,:show,:create,:destroy,:update] do
    resources :comments, only: [:create]
  end

  resources :users, only: [:show]
  root "articles#index"
  get 'articles/:id/edit' => 'articles#edit'
end
