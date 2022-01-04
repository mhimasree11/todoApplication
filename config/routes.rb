Rails.application.routes.draw do
  resources :todo_lists 
  resources :tasks
  
 
  root "todo_lists#index"
end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
