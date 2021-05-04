Rails.application.routes.draw do
  devise_for :users
  root to: 'pins#index'
  resources :pins
  #get 'home/index'
  get 'home/about'
  #root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
