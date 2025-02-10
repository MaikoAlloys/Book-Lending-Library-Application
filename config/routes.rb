Rails.application.routes.draw do
  # Root route
  root "books#index"

  # Book routes
  resources :books, only: [:index, :show]

  # Borrowing routes
  resources :borrowings, only: [:create] do
    member do
      post :return
    end
  end

  # User profile route
  get "profile", to: "users#profile", as: :user_profile

  # Authentication routes
  resources :users, only: [:new, :create]
  resource :session, only: [:new, :create, :destroy]  # Use singular for one session per user
  resources :passwords, param: :token, only: [:new, :create, :edit, :update]

  # Health check route (optional)
  get "up", to: "rails/health#show", as: :rails_health_check
end
