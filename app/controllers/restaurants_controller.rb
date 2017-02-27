class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
    @restaurant.rewards.build(params[:rewards]) #This allows multiple nested attributes to be saved...somehow.
  end

  def create
    raise params.inspect
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  private
  def restaurant_params
    params.require(:restaurant).permit(:name, :owner_id, :address, :phone_number, :rest_image, rewards_attributes: [:restaurant_id, :name, :description, :point_value])
  end

end
