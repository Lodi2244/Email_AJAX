Rails.application.routes.draw do
  devise_for :users
  root "home#index"
  resources :tasks, except: [:show]
  get "emails", to: "emails#index"
  get "emails/:id", to: "emails#show"
  delete "emails/:id", to: "emails#destroy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
