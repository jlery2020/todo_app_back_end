Rails.application.routes.draw do
get 'todo/index', to: 'todo#index'
get 'todo/new', to: 'todo#new'
post 'todo/new', to: 'todo#create'
get 'todo/show/:id', to: 'todo#show'
end
get 'todo/edit/:id', to: 'todo#edit'
get 'todo/update/:id', to: 'todo#update'
get 'todo/destroy/:id', to: 'todo#destroy'