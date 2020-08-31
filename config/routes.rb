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
root "standard/home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
