Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :students
  resources :school_classes
  # #read
  # get '/students', to: 'students#index', as: 'students'
  # get '/students/:id', to: 'students#show', as: 'student'
  
  # #create
  # get '/students/new', to: 'students#new', as: 'new_student'
  # post '/students', to: 'students#create'


  # #update
  # get '/students/:id/edit', to: 'students#edit'
  # patch '/students/:id', to: 'students#update' 

  # #delete
  # delete '/students/:id', to: 'students#destroy'
end
