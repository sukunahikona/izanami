Rails.application.routes.draw do
  post 'account/logout'
  get 'account/show'
  get 'account/login'
  post 'account/signin'
  get 'dashboard/show'
  post 'dashboard/create'
  put 'dashboard/update'
  delete 'dashboard/delete'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
