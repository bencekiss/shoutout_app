class Shout < ApplicationRecord
  RETWEET_CONSTANT = 2
  FAVORITE_CONSTANT = 0.5
  belongs_to :restaurant
  belongs_to :user

  # before_create :post_to_twitter

  def post_to_twitter
    body = twitter_text + " #ShoutOut ##{Restaurant.find(self.restaurant_id).name}"
    user.twitter.update_with_media(body, File.new(self.shout_image.image_resize.file.file))
    # get the actual tweet id of the shout
    # get the last tweet from the user and assign
    # code here

    return user.twitter.search(user.name).first.id

    # return the tweet_id
  end

  def self.points(shout)
    (shout.retweets * RETWEET_CONSTANT) + (shout.favourites * FAVORITE_CONSTANT)
  end
  mount_uploader :shout_image, ShoutImageUploader
end
