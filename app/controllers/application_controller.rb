class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :check_session
  
  def add_route
    new_route = ActionController::Routing::Routes.builder.build(name, route_options)
    ActionController::Routing::Routes.routes.insert(0, new_route)
  end

  def remove_route
    ActionController::Routing::Routes.routes.reject! { |r| r.instance_variable_get(:@requirements)[:slug_id] == id }
  end

  def update_route
    remove_route
    add_route
  end
  
  private
  def check_session
    return if self.controller_name == "session"
    @current_user = User.find(session[:user]) if session[:user]
    unless @current_user
      redirect = "http://#{request.host}:#{request.port}#{request.fullpath}"
      redirect_to(session_new_path, {:redirect => redirect})
    end
  end
end
