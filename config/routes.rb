Rails.application.routes.draw do
  devise_for :users
  root to: "categories#index"
  get "/home", to: "home#index", as: "home"
  resources :users, only: [:splash]
  resources :categories, only: [:index, :new, :create, :edit, :update, :destroy], :path => "categories" do 
    resources :expenses, only: [:index, :new, :create, :edit, :update, :destroy], :path => "transactions"
  end
end
