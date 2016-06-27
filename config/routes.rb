Rails.application.routes.draw do
  get 'secret_stuff/public_page'

  get 'secret_stuff/secret_page'

  

  root 'users#index'
  resources :users do
    resources :posts
  end

  get 'login', to: 'sessions#new'
  delete 'logout', to: 'sessions#destroy'
  resources :sessions, only: [:new, :create, :destroy]



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
