Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/tasks", to: "tasks#index", as: :tasks
  get "/show/:id", to: "tasks#show", as: :task
  get "/new", to:"tasks#new"
  post "/tasks", to:"tasks#create"
  get "/update/:id", to: "tasks#update"
  patch "/show/:id", to: "tasks#update_value"
  get "delete/:id", to: "tasks#destroy"

end
