Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # List of the tasks
  get 'tasks', to: 'tasks#index'
end
