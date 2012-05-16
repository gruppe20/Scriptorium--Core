class SessionController < ApplicationController
  def new
    authenticate_from_auth_module
  end
  
  def authenticate_from_auth_module
    redirect = params[:redirect]
    caller = "http://#{request.host}:#{request.port}/session/create"

    redirect_to(login_path(:caller => caller, :redirect => redirect))
  end
  
  def create
    @user = User.find_by_email(params[:email])
    unless @user
      @user = User.new(:email => params[:email], :realname => params[:name], :username => params[:nickname])
      @user.save
    end
    
    add_to_group(@user, nil)

    session[:user] = @user.id
    
    redirect_to("#{params[:redirect]}")
  end

  def add_to_group(user, group)
    if !group 
      group = Group.find_by_name("Students")
      unless group
        group = Group.create(:name => "Students")
      end
    end
    if user && !group.users.include?(user)
      group.users << user
    end
  end
  
  def destroy
    session[:user] = nil
    redirect_to root_url
  end
end
