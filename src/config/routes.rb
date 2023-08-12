Rails.application.routes.draw do
  get 'dashboard/show'
  post 'dashboard/create'
  put 'dashboard/update'
  delete 'dashboard/delete'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
