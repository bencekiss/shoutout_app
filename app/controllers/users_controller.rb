class UsersController < ApplicationController
  skip_before_action :require_login, only: %i(index new create show)

  def index
    @users = User.all
  end
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      auto_login(@user) #sorcery
      redirect_to root_url
    else
      flash[:alert] = "couldnt create user"
      render :new
    end
  end
  def show
    @user = current_user
    @shouts = Shout.all.where(user_id: @user.id)
    @shouted_resto = []
    @shouts.each do |shout|
      if !(@shouted_resto.include?(Restaurant.find(shout.restaurant_id)))
        @shouted_resto << Restaurant.find(shout.restaurant_id)
      end
    end
    @shout = Shout.new
    @restaurants = Restaurant.all.map {|resto| [resto.name, resto.id]}
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :last_name)
  end
end
