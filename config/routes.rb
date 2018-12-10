Rails.application.routes.draw do
  devise_for :users

  resources :articles, only: [:new,:show,:create,:destroy,:update]
  root "articles#index"
end
