# frozen_string_literal: true
Rails.application.routes.draw do
  resources :orders, except: [:new, :edit]
  resources :inventories, except: [:new, :edit]
  resources :products, only: [:index, :show, :create]
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
end
