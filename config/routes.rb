Rails.application.routes.draw do

  root 'store#index', as: 'store_index'

  resources :users
  resources :carts
  resources :line_items
  resources :orders

  get 'admin' => 'admin#index'

  resources :products do
    get :who_bought, on: :member
  end

  controller :sessions do
    get     'login' => :new
    post    'login' => :create
    delete  'logout' => :destroy
  end

end
