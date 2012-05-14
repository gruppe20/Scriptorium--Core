class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :check_session
  
  private
  def check_session
    return if self.controller_name == "session"
    @user = User.find(session[:user]) if session[:user]
    puts "=======================================================================User"
    puts @user
    unless @user
      redirect = "http://#{request.host}:#{request.port}#{request.fullpath}"
      redirect_to(session_new_path, {:redirect => redirect})
    end
  end
end
