Rails.application.routes.draw do

  root 'static#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  devise_for :users, controllers: {omniauth_callbacks: "omniauth_callbacks"}

end
