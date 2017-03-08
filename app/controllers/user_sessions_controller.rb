class UserSessionsController < ApplicationController
  skip_before_action :require_login, except: %i(destroy)
  def new
    @user = User.new
  end

  def create
<<<<<<< HEAD

    if @user = login(params[:email], params[:password], params[:remember_me])
      redirect_back_or_to(root_path, notice: "Login successful")
    else
      flash.now[:alert] = "Login failed"
      render action: 'new'
    end
=======
    @user = User.find_or_create_from_auth_hash(auth_hash)
    # byebug
    current_user = @user
    session[:user_id] = @user.id
    redirect_to root_path
>>>>>>> 0658913191102303d06212b664f2526941e39dca
  end

  def destroy
    logout
    redirect_to root_url, notice: 'Logged out!'
  end

<<<<<<< HEAD
=======
  protected

  def signin
  end

  def auth_hash
    request.env['omniauth.auth']
  end

>>>>>>> 0658913191102303d06212b664f2526941e39dca
end
