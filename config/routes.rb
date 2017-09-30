Rails.application.routes.draw do
get 'todo/index', to: 'todo#index'
end
Rails.application.routes.draw do
get 'todo/show/:id', to: 'todo#show'
end

