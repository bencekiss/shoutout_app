class Shout < ApplicationRecord
  RETWEET_CONSTANT = 2
  FAVORITE_CONSTANT = 0.5
  belongs_to :restaurant
  belongs_to :user

  def self.points(shout)
    (shout.retweets * RETWEET_CONSTANT) + (shout.favourites * FAVORITE_CONSTANT)
  end
end
