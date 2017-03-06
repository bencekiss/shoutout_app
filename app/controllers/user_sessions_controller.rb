class UserSessionsController < ApplicationController
  skip_before_action :require_login, except: %i(destroy)
  def new
    @user = User.new
  end

  def create
    @twitter_user = User.find_or_create_from_auth_hash(auth_hash)
    raise :test
    session[:user_id] = @twitter_user.id
    if @user = login(params[:email], params[:password], params[:remember_me])
      redirect_back_or_to(root_path, notice: "Login successful")
    else
      flash.now[:alert] = "Login failed"
      render action: 'new'
    end
  end

  def destroy
    logout
    redirect_to root_url, notice: 'Logged out!'
  end

  private
  def auth_hash
    request.env['omniauth.auth']

  end
end
