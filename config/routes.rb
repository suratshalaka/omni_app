Rails.application.routes.draw do
  root 'home#index'

  get 'home/profile'

  get 'auth/:provider/callback', to: "session#create"

  delete 'sign_out', to: "session#destroy", as: 'sign_out'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
