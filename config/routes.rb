Rails.application.routes.draw do
  devise_for :users

  resources :articles, only: [:new,:show,:create,:destroy,:update]
  resources :users, only: [:show]
  root "articles#index"
  get 'articles/:id/edit' => 'articles#edit'
end
