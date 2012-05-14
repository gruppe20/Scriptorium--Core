Core::Application.routes.draw do
  get "home/index"
  get "session/new"
  get "session/create"

  mount Auth::Engine => "/login", :as => "login"

  ActiveAdmin.routes(self)
  

  devise_for :admin_users, ActiveAdmin::Devise.config

  root :to => "home#index"
  match "/logout" => "session#destroy"
  #match "/auth/:provider/callback" => login.root_url
end
