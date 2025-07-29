Rails.application.routes.draw do
  root "products#index"
  resource :session
  resources :passwords, param: :token
  get "up" => "rails/health#show", as: :rails_health_check
  resources :products do
    resources :subscribers, only: [ :create ]
  end

  resources :products
  get "unsubscribe/:token", to: "unsubscribes#show", as: :unsubscribe
end
