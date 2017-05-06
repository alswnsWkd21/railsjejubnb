Rails.application.routes.draw do

  get 'u38nwn0YRl8FykLLeZV9', to: 'admin_sessions#new', as: 'admin_login'
  post 'admin_sessions/create', to: 'admin_sessions#create', as: 'admin_login_process'
  get 'admin_sessions/destroy', to: 'admin_sessions#destroy', as: 'admin_logout'

  get 'home/houses', to:'home#house_list', as: 'house_list'
  get 'home/houses/:id', to:'home#house_detail', as: 'house_detail'

  resources :houses

  get 'home/index'
  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end