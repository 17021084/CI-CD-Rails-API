Rails.application.routes.draw do
  resources :shops
  resources :balls
  resources :students
  resources :documents
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/", to: "hello#index"
  get "/:id", to: "hello#show"
end
