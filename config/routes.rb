Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :pins
 # get 'home/index'

  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'mypins'=> 'pins#mypins'
  get 'pinsof/:user_id' => 'pins#pinsof', :as => "pinsof"





end
