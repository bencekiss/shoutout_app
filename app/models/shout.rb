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

  def refresh(num_retweets, num_favorites)
    self.update({
      retweets: num_retweets,
      favourites: num_favorites
    })
  end

  def self.points(shout, user)
    # (shout.retweets * RETWEET_CONSTANT) + (shout.favourites * FAVORITE_CONSTANT)

    if user.twitter.status(shout.twitter_id).retweeted_status.class == Twitter::NullObject
      return ((user.twitter.status(shout.twitter_id).retweet_count) * RETWEET_CONSTANT) + (user.twitter.status(shout.twitter_id).favorite_count * FAVORITE_CONSTANT)
    else
      id = user.twitter.status(shout.twitter_id).retweeted_status.id
      return (user.twitter.status(id).retweet_count * RETWEET_CONSTANT + user.twitter.status(id).favorite_count * FAVORITE_CONSTANT)
    end
  end







end
