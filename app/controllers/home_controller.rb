class HomeController < ApplicationController
  def index
    @user = User.find_by_id(session[:user])
    puts @user.to_json
  end

end
