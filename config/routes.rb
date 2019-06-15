Rails.application.routes.draw do
  get 'register/new'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "contact/index"
  root "micropost#index"
end
