class Restaurant < ApplicationRecord
  mount_uploader :rest_img, RestImgUploader
  has_many :rewards
  has_many :shouts
  has_many :users, through: :shouts
  belongs_to :owner, class_name: "User"

  accepts_nested_attributes_for :rewards, reject_if: :all_blank, allow_destroy: true


  def points(user)
    shouts = Shout.all.where("user_id = ? AND restaurant_id = ?", user.id, self.id)
    points = 0

    shouts.each do |shout|
      points += Shout.points(shout, user) # positive points from shouts
    end

    user.rewards.each do |reward|
      if reward.restaurant_id == self.id
        points -= reward.point_value
        if points < 0
          points += reward.point_value
        end
      end
    end
    points
  end

  def redeem_reward(user, reward)
    if self.points(user) >= reward.point_value
      user.rewards << reward
    end
  end

  def redeemed_points(user)
    points = 0
    user.rewards.each do |reward|
      if reward.restaurant_id == self.id
        points += reward.point_value
      end
    end
    points
  end

end
