Pixtr::Application.routes.draw do
  resources :users, :only => [:new, :create]
  resources :galleries, :only => [:index, :new, :create, :show] do
    resources :images, :only => [:new, :create]
    resources :comments, :only => [:new, :create]
  end
  root :to => 'home#index'
end