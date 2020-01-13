Rails.application.routes.draw do
  
  resources :students, only: [:index, :show, :edit, :create, :update, :new]
  
  resources :school_classes, only: [:index, :show, :edit, :create, :update, :new]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
