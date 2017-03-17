class RewardsController < ApplicationController

  def new
    #code
  end

  def edit
    @restaurant = Restaurant.find(params[:restaurant_id])
    @reward = Reward.find(params[:id])
    @user = current_user
    @shout = Shout.new
    @restaurants = Restaurant.all.map {|resto| [resto.name, resto.id]}
    @redemptions = @user.redemptions

  end

  def update
    @restaurant = Restaurant.find(params[:restaurant_id])
    @reward = Reward.find(params[:id])
    if @reward.update_attributes(reward_params)
      redirect_to restaurant_path(@restaurant)
    end
  end

  def create
    #code
  end

  def show
    @user = current_user
    @@redemptions = @user.redemptions
  end

  def destroy
    @restaurant = Restaurant.find(params[:restaurant_id])
    @reward = Reward.find(params[:id])
    if Redemption.where(reward_id: @reward.id).empty?
      @reward.destroy
      redirect_to restaurant_path(@restaurant)
    else
      flash[:alert] = "Sorry. There are pending redemptions."
      redirect_to restaurant_path(@restaurant)
    end
  end

  def toggle_reward
    # byebug
    @restaurant = Restaurant.find(params[:restaurant_id])
    @reward = Reward.find(params[:id])
    if @reward.active
      @reward.active = false
    else
      @reward.active = true
    end
    @reward.save
    redirect_to restaurant_path(@restaurant)
  end

  private
  def reward_params
    params.require(:reward).permit(:name, :description, :point_value)
  end
end
