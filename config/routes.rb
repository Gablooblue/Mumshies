Rails.application.routes.draw do
  resources :products do
      get :rating
      resources :reviews
      resources :orders
  end

  resources :users, only: [:show]

  mount_devise_token_auth_for 'User', at: 'auth'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
