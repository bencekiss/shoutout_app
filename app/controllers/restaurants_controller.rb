class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
    @restaurant.rewards.build(params[:rewards]) #This allows multiple nested attributes to be saved...somehow.
  end

  def create

    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.owner_id = current_user.id
    if @restaurant.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @points = @restaurant.points(current_user)
    @available_rewards = Reward.all.where("restaurant_id = ? AND point_value <= ?", @restaurant.id, @points)
    @rewards_array = @available_rewards.map { |reward| [reward.name, reward.id] }
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @reward = Reward.find(params[:reward_id])
    if @reward.destroy
      redirect_to restaurant_path(@restaurant)
    end
  end



  private
  def restaurant_params
    params.require(:restaurant).permit(:name, :owner_id, :address, :phone_number, :rest_image, rewards_attributes: [:id, :restaurant_id, :name, :description, :point_value, :_destroy])
  end

end
