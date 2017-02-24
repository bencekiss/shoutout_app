class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show


  end

  private
  def restaurant_params
    params.require(:restaurant).permit(:name, :owner_id, :address, :phone_number, :rest_image, rewards_attributes: [:restaurant_id, :name, :description, :point_value])
  end

end
