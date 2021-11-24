Rails.application.routes.draw do
  resources :mutters
  resources :comments
  resources :pages
  resources :notes
  resources :profiles
  resources :prefs
  # mount_devise_token_auth_for 'User', at: 'auth'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    mount_devise_token_auth_for 'User', at: 'auth', controllers: {
      registrations: 'api/auth/registrations'
    }
  end
end
