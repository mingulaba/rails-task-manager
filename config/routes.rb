Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # Read all
  get 'tasks', to: 'tasks#index'
  # Create
  get 'tasks/new', to: 'tasks#new', as: :new_task
  # Read one - The show route needs to be ater new route.
  get 'tasks/:id', to: 'tasks#show', as: :task

  post "tasks", to: "tasks#create"

  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  patch "tasks/:id", to: "tasks#update"

  delete "tasks/:id", to: "tasks#destroy"
end
