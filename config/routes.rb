Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'hello', to: 'hello#index'
  get 'hello/index'
  post 'hello', to: 'hello#index'
  post 'hello/index'
end
