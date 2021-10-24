Rails.application.routes.draw do
  resources :cards
  get 'people/find'
  post 'people/find'
  resources :people
  get 'msgboard', to: 'msgboard#index'
  post 'msgboard', to: 'msgboard#index'
  get 'msgboard/index'
  post 'msgboard/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'hello', to: 'hello#index'
  get 'hello/index'
  post 'hello', to: 'hello#index'
  post 'hello/index'
end
