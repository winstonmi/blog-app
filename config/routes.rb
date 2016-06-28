Rails.application.routes.draw do
  root 'posts#index', as: :home
  # get 'secret_stuff/public_page'
  # get 'secret_stuff/secret_page'

  resources :users do
    resources :posts
    # do
    #   resources :comments
    # end
  end

  get 'sign_up', to: 'users#new'
  get 'login', to: 'sessions#new', :as => 'sign_in'
  delete 'logout', to: 'sessions#destroy'
  resources :sessions, only: [:new, :create, :destroy]

end

# get 'sign_up', to: 'users#new', as: :signup
#
# resources :users, only: [:new, :create] do
#     resources: posts
# end
