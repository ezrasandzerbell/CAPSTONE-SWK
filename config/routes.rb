Rails.application.routes.draw do
  devise_for :users
  root 'landing#index'

  resources :songs do
    resources :cryptograms
  end
end
