Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # BACK OFFICE ADMIN
  namespace "admin" do
    get "/" => "admin#dashboard"
    get "hostel" => "admin#hostels"
    get "restaurants" => "admin#restaurants"
    get "bookings" => "admin#bookings"
    get "customers" => "admin#users"
    get "employees" => "admin#employees"
    get "blog" => "admin#blog"
    get "rooms" => "admin#rooms"
    resources :bookings, only: [:new, :create, :update]
  end
  # BACK OFFICE CUSTOMER
  get "dashboard" => "pages#dashboard"

  # HOSTEL & ROOMS
  resources :hostels, only: [:update]
  resources :rooms, only: [:index, :show, :create, :update]
  resources :restaurants, only: [:index, :show, :create, :update]

  # ARTICLES & BLOGS
  get "blog" => "articles#index"
  resources :articles, only: [:show]
end
