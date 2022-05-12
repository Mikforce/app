Rails.application.routes.draw do
  devise_for :users
  root to: 'tamplates#index'

  resources :tamplates

  #devise_for :users do
    #get '/users/sign_out' => 'devise/sessions#destroy'
  #end

end
