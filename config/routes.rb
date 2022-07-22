Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  get 'home/index'
  root 'home#index'
  get 'home/services'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
end
