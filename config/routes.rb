Rails.application.routes.draw do

  get 'admin' => 'admin#index'
  resources :users
  resources :products do
    get :who_bought, on: :member
  end

  scope '(:locale)' do
    resources :carts
    resources :line_items
    resources :orders
    root 'store#index', as: 'store_index', via: :all
  end

  controller :sessions do
    get     'login' => :new
    post    'login' => :create
    delete  'logout' => :destroy
  end
end
