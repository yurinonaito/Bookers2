Rails.application.routes.draw do
  devise_for :users
  get 'homes/top'
  get 'homes/about'
  root to: "homes#top"
  
  resources :books, only:[:new, :create, :index, :show]
  resources :users, only:[:show, :edit]
end
