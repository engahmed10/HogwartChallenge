Rails.application.routes.draw do

  root "application#welcome"
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  #devise_for :users, :controllers => { registrations: 'users/registrations', omniauth_callbacks: "users/omniauth_callbacks"}

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
