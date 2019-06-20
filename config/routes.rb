Rails.application.routes.draw do
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "contact/index"
  root "micropost#index"


  get "/signup", to: "users#new"
  post "/signup", to: "users#create"
end
