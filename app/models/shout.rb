class Shout < ApplicationRecord
  RETWEET_CONSTANT = 2
  FAVORITE_CONSTANT = 0.5
  belongs_to :restaurant
  belongs_to :user

  before_create :post_to_twitter

  def post_to_twitter
    user.twitter.update(twitter_text)
  end

  def self.points(shout)
    (shout.retweets * RETWEET_CONSTANT) + (shout.favourites * FAVORITE_CONSTANT)
  end
  mount_uploader :shout_image, ShoutImageUploader
end
