Rails.application.routes.draw do
  devise_for :users
  get '/home/about', to: 'homes#about', as: 'about'
  root to: "homes#top"
  
  resources :books, only:[:create, :index, :show, :edit, :update, :destroy]
  resources :users, only:[:show, :edit, :index, :update]
end
