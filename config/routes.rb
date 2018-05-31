Rails.application.routes.draw do
  # For details on the DSL available within this file
  # see http://guides.rubyonrails.org/routing.html
  get "/park/sign_up", to: "users#sign_up"
end
