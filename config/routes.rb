Rails.application.routes.draw do
  devise_for :users
  get 'tweets/top' => 'tweets#top'
  get 'tweets/mayurikatoha' => 'tweets#mayurikatoha'
  get 'tweets/unagerorin' => 'tweets#unagerorin'
  get 'tweets/friends' => 'tweets#friends'
  resources :users, only: [:show] 
  resources :comments, only: [:create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :tweets
  root 'tweets#index'
  resources :res
  resources :ais
end
