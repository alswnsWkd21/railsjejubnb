Rails.application.routes.draw do

  get 'home/houses', to:'home#house_list', as: 'house_list'
  get 'home/houses/:id', to:'home#house_detail', as: 'house_detail'

  resources :houses

  get 'home/index'
  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end