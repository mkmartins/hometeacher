Rails.application.routes.draw do
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :members, only: [:index, :show]

  root 'pages#index'
  get 'search' => 'search#index', as: :search

end
