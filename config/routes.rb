Rails.application.routes.draw do
  devise_for :users, path: 'auth',
    path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', 
                  confirmation: 'comfirm', unlock: 'unblock', registration: 'register', 
                  sign_up: 'sign-up' 
                },
    controllers:{registrations: 'users/registrations',
                  sessions: 'users/sessions',
                  passwords: 'users/passwords',
                  unlocks: 'users/unlocks',
                  confirmation: 'users/confirmations'
                }
    devise_scope :user do
    get 'password/change', to: 'standard/change_info#change_password', as: :change_password
    put 'password/change', to: 'standard/change_info#change_password_put', as: :change_password_put
    get 'profile', to: 'standard/change_info#show', as: :profile
    end
    get 'post/comfirm', to: 'post#confirm_public_post', as: :admin_comfirm
    # post 'post/comfirm', to: 'post#pulic_post', as: :admin_confirm_ok
    resources :post do
      resources :comment
    end
    namespace :standard do
      resources :home
    end
    resources :like, only: [:create]
    resources :book_mark, only: [:create]
    resources :comment, only: [:create]

root "standard/home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
