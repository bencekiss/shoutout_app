require 'test_helper'

class UserTest < ActiveSupport::TestCase
  setup do
    @bence = FactoryGirl.create(:user)
    @david = FactoryGirl.create(:user)
    @restaurant = FactoryGirl.create :restaurant, owner_id: 1000
    @other_restaurant = FactoryGirl.create :restaurant, owner_id: 5000
    @generic_number = rand(5)
    @generic_number.times do
      FactoryGirl.create :shout, user_id: @bence.id, restaurant_id: @restaurant.id, retweets: 5, favourites: 4
    end
    @shout = FactoryGirl.create :shout, user_id: @david.id, restaurant_id: @restaurant.id, retweets: 5, favourites: 4
    @reward1 = FactoryGirl.create :reward, restaurant_id: @restaurant.id, point_value: 10
    @reward2 = FactoryGirl.create :reward, restaurant_id: @restaurant.id, point_value: 13
    @other_reward = FactoryGirl.create :reward, restaurant_id: @other_restaurant.id, point_value: 2
    @chimneycake = FactoryGirl.create :restaurant, owner_id: @bence.id
    @ice_cream = FactoryGirl.create :reward, restaurant_id: @chimneycake.id, point_value: 12
  end

  test "David, Bence, and some dude exist" do
    FactoryGirl.create :user
    assert_equal 3, User.all.length
  end

  test "Bence has a generic number of shouts" do
    assert_equal @generic_number, @bence.shouts.length
  end

  test "David can earn points from his shouts" do
    assert_equal 12, Shout.points(@shout)
  end

  test "David can redeem reward 1" do
    assert @restaurant.points(@david) > @reward1.point_value
  end

  test "David cannot redeem reward 2" do
    assert @restaurant.points(@david) < @reward2.point_value
  end

  test "David makes a redemption for reward 1" do
    FactoryGirl.create :redemption, user_id: @david.id, reward_id: @reward1.id, redemption_status: false
    assert_equal 2, @restaurant.points(@david)
    assert @david.rewards.any?
  end

  test "Bence cannot redeem points from one restaurant at another restaurant" do
    @other_restaurant.redeem_reward(@bence, @other_reward)
    assert_equal @generic_number*12, @restaurant.points(@bence)
    assert_equal 0, @other_restaurant.points(@bence)
  end

  test "Bence opened up ChimneyCake" do
    assert @bence.owned_restaurants.any?
  end

  test "David is too poor so he can't own a restaurant until he gets a developer job after Bitmaker" do
    assert @david.owned_restaurants.empty?
  end

  test "David went to ChimneyCake, made a popular shout, and then redeemed an ice cream Chimney with some points left over" do
    chimneycake_shout = FactoryGirl.create :shout, user_id: @david.id, restaurant_id: @chimneycake.id, retweets: 5, favourites: 6
    redemption = FactoryGirl.create :redemption, user_id: @chimneycake.id, reward_id: @ice_cream.id, redemption_status: false
    redemption.redemption_status = true #This is going to be a proper method after we refactor our code.
    @david.rewards << @ice_cream
    assert @david.shouts.find_by(restaurant_id: @chimneycake.id)
    assert @david.rewards.any?
    assert @chimneycake.points(@david) > 0
  end

end
