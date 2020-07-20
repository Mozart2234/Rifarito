Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    resources :raffles, only: [:index, :show] do
      resources :tickets , only: [:index, :show]
      resources :buyers, only: [:index, :show]
    end
  end
end
