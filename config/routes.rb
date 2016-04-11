Rails.application.routes.draw do

  root to: 'pages#index'

  resources :members


end
