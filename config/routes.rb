Rails.application.routes.draw do
  root to: 'tamplates#index'
  
  resources :tamplates
end
