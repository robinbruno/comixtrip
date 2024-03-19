Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  devise_for :users
  root to: "comic_trips#home"

  resources :comic_trips, path: 'comics', only: [:index, :show, :new, :create ]
  resources :bookmarks, only: []
  get "profile", to: "pages#profile"
  get "edit", to: "pages#edit"
  get "qrcode", to: "pages#qrcode"
  get "news", to: "pages#news"

  resources :compositions, only: []
  resources :elements, only: []
  resources :vignettes, only: []

  resources :album_comic_trips, only: []
  resources :albums, only: []
end
