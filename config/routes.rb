Rails.application.routes.draw do
  resources :ability_modifiers

  resources :skills

  resources :saving_throws

  resources :abilities

  authenticated :user do
    root :to => 'characters#index', :as => :authenticated_root
  end
  root :to => redirect('/users/sign_in')

  devise_for :users
  resources :characters  
end
