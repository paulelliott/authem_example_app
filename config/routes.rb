AuthemExampleApp::Application.routes.draw do
  resources :posts, except: [:edit, :update, :destroy]
  resources :user_sessions, only: [:new, :create, :destroy]

  match 'sign_in', to: 'user_sessions#new'
  match 'sign_out', to: 'user_sessions#destroy'

  root to: "posts#index"
end
