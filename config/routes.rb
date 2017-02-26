Rails.application.routes.draw do
  devise_for :users
  root 'home#index'

  resources :users do
    resources :songs
  end

  resources :songs do
    resources :cryptograms
  end
end
