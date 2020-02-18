Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # List of the tasks
  get 'tasks', to: 'tasks#index'
  get 'tasks/new', to: 'tasks#new'
  post 'tasks/create', to: 'tasks#create'
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit
  patch 'tasks/:id/update', to: 'tasks#update', as: :update
  delete 'tasks/:id', to: 'tasks#destroy', as: :destroy
  get 'tasks/:id', to: 'tasks#show', as: :show
end
