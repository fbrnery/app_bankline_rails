Rails.application.routes.draw do

   get 'admin' => 'admin#index'
  controller :sessions do
    get  'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end
  resources :users
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  root 'home#index'
  get 'home/index'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
