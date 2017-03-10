class UserSessionsController < ApplicationController
  skip_before_action :require_login, except: %i(destroy)
  def new
    @user = User.new
  end

  def create

    @user = User.find_or_create_from_auth_hash(auth_hash)

    # byebug
    current_user = @user
    session[:user_id] = @user.id
    redirect_to root_url
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: 'Logged out!'
  end


  protected

  def signin
  end

  def auth_hash
    request.env['omniauth.auth']
  end

end
