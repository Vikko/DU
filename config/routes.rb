DesignUnited::Application.routes.draw do
  get "login" => "sessions#new", :as => "login"
  get "logout" => "sessions#destroy", :as => "logout"
  get "signup" => "users#new", :as => "signup"

  get "blogpages/index"

  get "home/index"

  get "pages/index"
  root :to => "home#index"
  match "/pages" => "pages#index" #for search
  resource :about
  resources :profiles, :cases, :events, :users, :sessions
  resources :blogpages do
    resources :comments
  end
  resources :users do
    member do
      get :activate
    end
  end
  
end
