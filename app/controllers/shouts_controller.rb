class ShoutsController < ApplicationController
  before_action :require_login

  def new
    @shout = Shout.new
  end

  def create
    @shout = Shout.new(shout_params)
    @shout.retweets = 0
    @shout.favourites = 0
    if @shout.save
      flash[:notice] = "Successfully created SHOUT"
      redirect_to user_url(current_user.id)
    else
      flash[:alert] = "You know nothing. No, just didnt manage to shout out right now."
      render user_path(current_user.id)
    end
  end
  def show
    @shout = Shout.find(params[:id])
  end
  def edit
    @shout = Shout.find(params[:id])
    @user = current_user
    @restaurants = Restaurant.all.map {|resto| [resto.name, resto.id]}
  end
  def update
    @shout = Shout.find(params[:id])
    @user = current_user
    if @shout.update_attributes(shout_params)
      flash[:notice] = "Successfully updated shoutout!"
      redirect_back_or_to user_shout_path(current_user, @shout)
    else
      flash.now[:alert] = "Couldnt update shoutout, try again"
      render :edit
    end
  end

  def destroy
    @shout = Shout.find(params[:id])
    @shout.destroy
    flash[:notice] = "Deleted shoutout"
    redirect_back_or_to user_path(current_user)
  end

  private
  def shout_params
    params.require(:shout).permit(:twitter_id, :twitter_text, :twitter_image, :retweets, :favourites, :user_id, :restaurant_id, :shout_image)
  end
end
