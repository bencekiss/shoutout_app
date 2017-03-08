class Shout < ApplicationRecord
  RETWEET_CONSTANT = 2
  FAVORITE_CONSTANT = 0.5
  belongs_to :restaurant
  belongs_to :user

  before_create :post_to_twitter

  def post_to_twitter
    body = twitter_text + " #ShoutOut ##{Restaurant.find(self.restaurant_id).name}"
    user.twitter.update_with_media(body, File.new(self.shout_image.file.file))
  end

  def self.points(shout)
    (shout.retweets * RETWEET_CONSTANT) + (shout.favourites * FAVORITE_CONSTANT)
  end
  mount_uploader :shout_image, ShoutImageUploader
end
