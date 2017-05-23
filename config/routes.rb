Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #READ
  get '/tasks', to: 'tasks#index' #get all tasks
  get '/tasks/:id', to: 'tasks#show' #get a precise task, e.g GET '/tasks/3' get task with id=3

  #CREATE
  get '/tasks/new', to: 'tasks#new' #get the form to create a new task
  post '/tasks', to: 'tasks#create' #post a new task

  #UPDATE
  get '/tasks/:id/edit', to: 'tasks#edit' #get the form to edit an existing task
  patch '/tasks/:id', to: 'tasks#update' #update an existing task

  #DELETE
  delete '/tasks/:id', to: 'tasks#destroy' #delete an existing task

end
