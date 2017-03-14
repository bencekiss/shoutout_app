class RestaurantsController < ApplicationController
  def index
    @all_restaurants = Restaurant.all
    @shout = Shout.new
    @restaurants = Restaurant.all.map {|resto| [resto.name, resto.id]}
    @user = current_user
    @redemptions = @user.redemptions
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

  def edit
    @restaurant = Restaurant.find(restaurant_params[:id])
  end

  def update
    @restaurant = Restaurant.find(restaurant_params[:id])
    if @restaurant.update_attributes
      redirect_to restaurant_path(@restaurant)
    else
      render 'edit'
    end
  end

  def show
    @user = current_user
    @shout = Shout.new
    @restaurants = Restaurant.all.map {|resto| [resto.name, resto.id]}
    @restaurant = Restaurant.find(params[:id])
    @points = @restaurant.points(current_user)
    @available_rewards = Reward.all.where("restaurant_id = ? AND point_value <= ?", @restaurant.id, @points)
    @rewards_array = @available_rewards.map { |reward| [reward.name, reward.id] }
    @redemptions = @user.redemptions
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
    params.require(:restaurant).permit(:name, :owner_id, :address, :phone_number, :rest_img, rewards_attributes: [:id, :restaurant_id, :name, :description, :point_value, :_destroy])
  end

end
