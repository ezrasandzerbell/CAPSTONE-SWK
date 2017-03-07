Rails.application.routes.draw do
  devise_for :users
  root 'home#index'

  resources :users do
    resources :albums
  end

  resources :albums do
    resources :songs
  end

  resources :songs do
    resources :riffs
  end

  resources :riffs do
    resources :cryptograms
  end

  get '/keyboard', to: 'cryptokeyboard#index', as: 'keyboard'
end
