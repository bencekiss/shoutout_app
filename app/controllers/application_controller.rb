class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception
  before_action :require_login

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  private
    def not_authenticated
      redirect_to login_path, alert: "LOGIN NOW PLEASE"
    end
end
