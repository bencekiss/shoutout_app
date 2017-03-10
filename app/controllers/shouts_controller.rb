class ShoutsController < ApplicationController
  before_action :require_login
  # before_action :post_to_twitter, only: [:create]

  def new
    @shout = Shout.new
  end

  def create

    @shout = Shout.new(shout_params)
    @shout.twitter_id = @shout.post_to_twitter
    @shout.retweets = 0
    @shout.favourites = 0

    if @shout.save
      flash[:notice] = "Successfully created SHOUT"
      redirect_to root_url
    else
      flash[:alert] = "You know nothing. No, just didnt manage to shout out right now."
      render root_path
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
    redirect_back_or_to root_path
  end

  private
  def shout_params
    params.require(:shout).permit(:twitter_id, :twitter_text, :twitter_image, :retweets, :favourites, :user_id, :restaurant_id, :shout_image)
  end
end
