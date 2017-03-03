class UsersController < ApplicationController
  skip_before_action :require_login, only: %i(index new create show)

  def index
    @users = User.all
    @restaurants = Restaurant.all
  end
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    # byebug
    if @user.save
      auto_login(@user) #sorcery
      redirect_to root_url
    else
      flash[:alert] = "couldnt create user"
      render :new
    end
  end

  def show

    if params[:reward_id]
      flash[:notice] = "Redeemed a reward!"
      @reward = Reward.find(params[:reward_id])
      # byebug
      current_user.rewards << @reward
      # redirect_to user_path(current_user.id)
      respond_to do |format|
        format.html
        format.json do
          render json: @reward
        end

      end
    end

    @user = current_user

    @redemptions = @user.redemptions
    @shouts = Shout.all.where(user_id: @user.id)
    @shouted_resto = []
    @shouts.each do |shout|
      if !(@shouted_resto.include?(Restaurant.find(shout.restaurant_id)))
        @shouted_resto << Restaurant.find(shout.restaurant_id)
      end
    end
    @shout = Shout.new
    @restaurants = Restaurant.all.map {|resto| [resto.name, resto.id]}

    @uploader = AvatarUploader.new ###Not sure what we need this for yet.
  end

  def change_redemption_status
    @redemption = Redemption.find(params[:redemption_id])
    @redemption.redemption_status = true
    @redemption.save

    redirect_to my_restaurants_path
  end

  def my_restaurants
    @user = current_user
    @owned_restaurants = @user.owned_restaurants
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :last_name, :avatar)
  end
end
