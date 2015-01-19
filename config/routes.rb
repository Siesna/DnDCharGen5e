Rails.application.routes.draw do
  get 'welcome/index'

  devise_for :users
  # You can have the root of your site routed with "root"
  resources :characters
  root 'characters#index'
  # root to: 'visitors#index'

end
