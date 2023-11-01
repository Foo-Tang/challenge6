Rails.application.routes.draw do
  root 'customers#index'
  resources :customers do
    collection do
      get 'alphabetized'
      get 'missing_email'
    end
  end


  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
