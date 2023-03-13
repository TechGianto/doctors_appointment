Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  root 'home#index'
  controller :home do
    get :services, action: :services
    get :hello, action: :test
    get :account, action: :account
    # get :services, path: 'our-services', action: :services
  end

  controller :search do
    get :search, action: :index
    get 'search/:id', action: :show
    get :filter, action: :filter
  end

  # resources :doctor, only: [:index, :show] do
  #   post :sack
  # end

  resources :doctors
  resources :patient, only: [:index]

  controller :patient do
    get 'patient/appointment/:id', action: :index
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
end
