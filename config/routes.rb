Rails.application.routes.draw do

  get 'home/index'
  root to: "home#index"
  
  devise_for :users, skip: [:sessions], path_names:{ sign_up:'signup', password: 'secret', confirmation: 'verification', unlock: 'unblock'}
  
  as :user do
    get 'login', to: 'devise/sessions#new', as: :new_user_session
    post 'login', to: 'devise/sessions#create', as: :user_session
    delete 'logout', to: 'devise/sessions#destroy', as: :destroy_user_session
  end

  resources :products, path: 'productos'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
