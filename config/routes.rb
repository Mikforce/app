Rails.application.routes.draw do
  devise_for :users
  root to: 'tamplates#index'
  
  resources :tamplates
end
