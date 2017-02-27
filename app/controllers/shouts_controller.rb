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

  private
  def shout_params
    params.require(:shout).permit(:twitter_id, :twitter_text, :twitter_image, :retweets, :favourites, :user_id, :restaurant_id)
  end
end
