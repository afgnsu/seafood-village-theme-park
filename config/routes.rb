Rails.application.routes.draw do
  # For details on the DSL available within this file
  # see http://guides.rubyonrails.org/routing.html
  
  get  "/signup", to: "users#sign_up_new"
  post "/signup", to: "users#sign_up"
  
  root 'attractions#index'
  resources :attractions, only: [:index]
  
  # resource :sessions, only: [:new, :create, :destroy]
  get    "/login",  to: "sessions#new"
  post   "/login",  to: "sessions#destroy"
  delete "/logout", to: "sessions#destroy"
end
