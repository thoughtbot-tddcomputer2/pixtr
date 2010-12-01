Pixtr::Application.routes.draw do
  resources :users, :only => [:new, :create]
  root :to => 'home#index'
end