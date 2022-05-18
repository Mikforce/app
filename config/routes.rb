Rails.application.routes.draw do

  devise_for :users, controllers: { applications: 'applications' }, controllers: {registrations: 'registrations'}
  root to: 'tamplates#base'

  resources :tamplates


  devise_scope :user do
    get "login", :to => "devise/sessions#new"
    get "register", :to => "devise/registrations#new"
    get "settings", :to => "devise/registrations#edit"
    get "logout",   :to => "devise/sessions#destroy"

 end

  #devise_for :users do
    #get '/users/sign_out' => 'devise/sessions#destroy'
  #end

end
