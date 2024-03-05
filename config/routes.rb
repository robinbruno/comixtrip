Rails.application.routes.draw do
  resources :album_comic_trips
  resources :albums
  resources :compositions
  resources :elements
  resources :vignettes
  resources :bookmarks
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  devise_for :users
  root to: "comic_trips#index"

  resources :comic_trips, path: 'comics', only: [:index, :show, :new, :create]

  
end
