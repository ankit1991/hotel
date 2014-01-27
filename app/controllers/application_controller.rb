class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :authorize

  def authorize
    begin
      user = User.find(session[:user_id])
      if (!current_user? user) && (!admin? user)
        raise ActiveRecord::RecordNotFound
      end
    rescue ActiveRecord::RecordNotFound
      reset_session
      redirect_to login_path, alert: "Access Denied, Login first or Signup "
    end
  end

  def current_user? user
    user.id == params[:id].to_i
  end
  def admin? user
    user.admin?
  end
end
