Rails.application.routes.draw do
  get 'welcome/index'

  authenticated :user do
    root :to => 'home#index', :as => :authenticated_root
  end
  root :to => redirect('/users/sign_in')

  devise_for :users
  # You can have the root of your site routed with "root"
  resources :characters
  # root 'welcome#index'
  # root to: 'visitors#index'

end
