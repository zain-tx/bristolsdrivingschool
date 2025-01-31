Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

    root "pages#home" # Homepage
    get "/about", to: "pages#about" # About page
    get "/reviews", to: "pages#reviews" # Contact page
    get "/book_session", to: "pages#book_session"
    resources :bookings, only: [:new, :create]  
    resources :contacts, only: [:new, :create]


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
