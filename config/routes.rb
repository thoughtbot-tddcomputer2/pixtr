Pixtr::Application.routes.draw do
  resources :users, :only => [:new, :create]
  resources :galleries, :only => [:new, :create, :show]
  root :to => 'home#index'
end