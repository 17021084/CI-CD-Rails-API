Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/", to: "hello#index"
  get "/:id", to: "hello#show"
end
