Rails.application.routes.draw do
  resources :tickets
  root  to: "tickets#index"
  get "/tickets", to: "tickets#index"
end
