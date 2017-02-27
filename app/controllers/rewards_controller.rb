class RewardsController < ApplicationController

  def new
    #code
  end

  def edit
    @restaurant = Restaurant.find(params[:restaurant_id])
    @reward = Reward.find(params[:id])
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
  end

  def destroy
    @restaurant = Restaurant.find(params[:restaurant_id])
    @reward = Reward.find(params[:id])
    if @reward.destroy
      redirect_to restaurant_path(@restaurant)
    end
  end

  private
  def reward_params
    params.require(:reward).permit(:name, :description, :point_value)
  end
end
