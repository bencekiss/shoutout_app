class Redemption < ApplicationRecord
  belongs_to :user
  belongs_to :reward

  def self.redeemable(restaurant)
    redemptions = []
    rewards_at_my_resto = Reward.where(restaurant_id: restaurant.id)
    rewards_at_my_resto.each do |reward|
      redempts = Redemption.where(reward_id: reward.id)
      redempts.each { |redemp| redemptions << redemp if !(redemp.redemption_status) }
    end
    
    redemptions
  end

end
