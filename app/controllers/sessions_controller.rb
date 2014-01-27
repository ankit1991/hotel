class SessionsController < ApplicationController
  skip_before_action :authorize

  def welcome
  end

  def new
  end

  def create
    @user = User.find_by(user_name: params[:user_name])
    if(@user && @user.authenticate(params[:password]))
      session[:user_id] = @user.id
      session[:name] = @user.name
      if @user.admin
        session[:admin] = true
        redirect_to users_path
      else
        session[:admin] = false
        redirect_to @user
      end
    else
      redirect_to login_url, alert: "Invalid user Or password"
    end
  end

  def destroy
    # FIXME-AK: use reset_session for logging user out...
    reset_session
    redirect_to root_path, notice: "Logged out"
  end
end
