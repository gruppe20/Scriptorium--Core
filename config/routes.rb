Core::Application.routes.draw do
  get "home/index"
  get "session/new"
  get "session/create"

  ActiveAdmin.routes(self)
  mount Auth::Engine => "/", :as => "login"

  devise_for :admin_users, ActiveAdmin::Devise.config

 # root :to => "home#index"
  match "/logout" => "session#destroy"
end
