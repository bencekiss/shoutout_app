class ShoutsController < ApplicationController
  before_action :require_login
  # before_action :post_to_twitter, only: [:create]

  def new
    @shout = Shout.new
  end

  def create

    @shout = Shout.new(shout_params)
    if !(@shout.shout_image.file == nil)
      @shout.twitter_id = @shout.post_to_twitter
    else
      flash.now[:alert] = "Something went wrong! Did you upload an image?"
    end
    @shout.retweets = 0
    @shout.favourites = 0

    if @shout.save && !(@shout.shout_image == nil)
      flash[:notice] = "Successfully created SHOUT"
      redirect_to root_path
    else
      flash[:alert] = "Sorry, something wen't wrong, did you include an image?"
      redirect_to root_path
    end
  end
  def show
    @user = current_user
    @shout = Shout.find(params[:id])
    @restaurants = Restaurant.all.map {|resto| [resto.name, resto.id]}
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
