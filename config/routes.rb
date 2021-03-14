Rails.application.routes.draw do

  get 'inicio', to: 'home#index'
  root to: "home#index"

  devise_for :users, skip: [:sessions], path_names:{ sign_up:'signup', password: 'secret', confirmation: 'verification', unlock: 'unblock'}

  as :user do
    get 'login', to: 'devise/sessions#new', as: :new_user_session
    post 'login', to: 'devise/sessions#create', as: :user_session
    delete 'logout', to: 'devise/sessions#destroy', as: :destroy_user_session
  end

  resources :sales, path: 'ventas'

  resources :products, path: 'productos'

  resources :groups, path: 'grupos' do
    resources :inventories, path: 'inventarios'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
