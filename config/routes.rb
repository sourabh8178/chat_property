Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
  get "show", to: "home#show"
  get "grad", to: "home#grad"
  get "property/:id", to: "home#show"
  get "view_all_property", to: "home#view_all_property"
  resources :rooms
  get "message", to: "home#message"
  resources :rooms do
    resources :messages
  end


  resource :home
end
