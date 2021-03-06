DesignUnited::Application.routes.draw do
  get "passwordreset/create"

  get "passwordreset/edit"

  get "passwordreset/update"

  get "login" => "sessions#new", :as => "login"
  get "logout" => "sessions#destroy", :as => "logout"
  get "signup" => "users#new", :as => "signup"

  get "blogpages/index"

  get "home/index"

  get "pages/index"
  
  match "about", :controller => "abouts", :action => "show", :id => "1", :as => "aboutdu"
  match "introduction", :controller => "abouts", :action => "show", :id => "2", :as => "introduction"
  match "mission", :controller => "abouts", :action => "show", :id => "3", :as => "mission"
  match "activities", :controller => "abouts", :action => "show", :id => "4", :as => "activities"
  match "contact", :controller => "abouts", :action => "show", :id => "5", :as => "contact"
  
  root :to => "home#index"
  
  match "/pages" => "pages#index" #for search

  resources :abouts
  resources :profiles, :cases, :events, :users, :sessions, :passwordresets
  resources :blogpages do
    resources :comments
  end
  resources :users do
    member do
      get :activate
    end
  end


  
end
