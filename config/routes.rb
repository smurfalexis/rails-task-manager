Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # list all the tasks
  get 'tasks', to: 'tasks#index'

  # create a new task
  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'

  # update a task
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'

  # destroy a task
  delete 'tasks/:id', to: 'tasks#destroy'

  # show one task
  get 'tasks/:id', to: 'tasks#show', as: :task
  # resources :tasks
end
