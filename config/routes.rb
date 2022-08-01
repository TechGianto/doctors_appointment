Rails.application.routes.draw do
  #get 'patient/patient'
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  root 'home#index'
<<<<<<< HEAD
  controller :home do
    get :services, action: :services
    get :hello, action: :test
    # get :services, path: 'our-services', action: :services
  end

  controller :search do
    get :search, action: :index
  end

  # resources :doctor, only: [:index, :show] do
  #   post :sack
  # end
=======
  get 'home/services'
  resources :patient
>>>>>>> 5c8dae6 (Patient header and sidebar)
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
end
