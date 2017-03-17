class Shout < ApplicationRecord
  mount_uploader :shout_image, ShoutImageUploader
  RETWEET_CONSTANT = 200
  FAVORITE_CONSTANT = 200

  belongs_to :restaurant
  belongs_to :user
  # before_create :post_to_twitter

  def post_to_twitter
    restaurant_hashtag = Restaurant.find(self.restaurant_id).name
    restaurant_hash = Shout.refine_hash(restaurant_hashtag)
    body = twitter_text + " #ShoutOut ##{restaurant_hash}"
    t = user.twitter.update_with_media(body, File.new(self.shout_image.image_resize.file.file))
    t.id
  end

  def self.refine_hash(restaurant_hashtag)
    refined_hash = []
    restaurant_hashtag.chars.each { |x| refined_hash << x if /\w/.match(x) }
    refined_hash.join("")
  end

  def self.points(shout, user)
    if shout.active
      begin

        @user_tweet= user.twitter.status(shout.twitter_id)
        retweets_from_twitter = @user_tweet.retweet_count
        favorites_from_twitter = @user_tweet.favorite_count
        shout.update(retweets: retweets_from_twitter, favourites: favorites_from_twitter)
        return (shout.retweets * RETWEET_CONSTANT) + (shout.favourites * FAVORITE_CONSTANT)

      rescue # do this if there was an error
        shout.update(active: false)
        return (shout.retweets * RETWEET_CONSTANT) + (shout.favourites * FAVORITE_CONSTANT)
      end
    else
      return (shout.retweets * RETWEET_CONSTANT) + (shout.favourites * FAVORITE_CONSTANT)
    end
  end
end
