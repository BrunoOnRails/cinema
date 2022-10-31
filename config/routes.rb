Rails.application.routes.draw do
  root  to: "tickets#index"
  get "/tickets", to: "tickets#index"
  
  resources :tickets
  resources :sessions
  resources :hour_sessions

end
