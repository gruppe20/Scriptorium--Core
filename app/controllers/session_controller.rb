class SessionController < ApplicationController
  def new
    authenticate_from_auth_module
  end
  
  def authenticate_from_auth_module
    redirect = params[:redirect]
    caller = "http://#{request.host}:#{request.port}/session/create"
    redirect_to("http://#{request.host}:#{request.port}/auth/caller=#{caller}&redirect=#{redirect}")
  end
  
  def create
    @user = User.find_by_username(params[:email])
    unless @user
      @user = User.new(:username => params[:email], :realname => params[:name])
      @user.save
    end
    
    session[:user] = @user.id
    
    redirect_to("#{params[:redirect]}")
  end
end
