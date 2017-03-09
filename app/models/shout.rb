class Shout < ApplicationRecord
  mount_uploader :shout_image, ShoutImageUploader
  RETWEET_CONSTANT = 10
  FAVORITE_CONSTANT = 5
  belongs_to :restaurant
  belongs_to :user

  # before_create :post_to_twitter

  def post_to_twitter
    body = twitter_text + " #ShoutOut ##{Restaurant.find(self.restaurant_id).name}"
    t = user.twitter.update_with_media(body, File.new(self.shout_image.image_resize.file.file))

    # get the actual tweet id of the shout
    # get the last tweet from the user and assign
    # code here
    # sleep 10

    # return the tweet_id
    t.id
  end



  def self.points(shout, user)
    # (shout.retweets * RETWEET_CONSTANT) + (shout.favourites * FAVORITE_CONSTANT)

    # My understanding of this is as follows:
    # When you delete a tweet, that ID no longer exists within twitter, yet we're still looking for it through our points array
    # To bypass this, the 'begin' 'rescue' 'ensure' method below will 1. Check for a user_tweet and if it returns back <null> will
    # be "looked over" It prevents an error message from occuring and will continue to do code lines 38-48 ALWAYS. If I placed that block
    # of code within 'rescue' it will error at points calculation due to a twitter::tweet can't be coerced into a fixnum error
    # whether this is a temporary solution or not, we should explore this question further, but it's currently  a good work around.
    begin
      @user_tweet= user.twitter.status(shout.twitter_id)
    rescue
      puts "test1"
      raise # Reraise exception
    ensure
      if @user_tweet.retweeted_status.class == Twitter::NullObject
        retweets_from_twitter = @user_tweet.retweet_count
        favorites_from_twitter = @user_tweet.favorite_count
        shout.update(retweets: retweets_from_twitter, favourites: favorites_from_twitter)
        return (retweets_from_twitter * RETWEET_CONSTANT) + (favorites_from_twitter * FAVORITE_CONSTANT)
      else
        id = user.twitter.status(shout.twitter_id).retweeted_status.id
        retweets_from_twitter = user.twitter.status(id).retweet_count
        favorites_from_twitter = user.twitter.status(id).favorite_count
        shout.update(retweets: retweets_from_twitter, favourites: favorites_from_twitter)
        return (retweets_from_twitter * RETWEET_CONSTANT + favorites_from_twitter * FAVORITE_CONSTANT)
      end
    end
  end







end
