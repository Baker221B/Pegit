Rails.application.routes.draw do
  get 'profiles/:id' => 'profiles#show', as: :profile
  root 'profiles#index'
  get 'feed' => 'meetups#feed'
  resources :meetups, except: [:show]
  resources :handicaps
  devise_for :users

end
