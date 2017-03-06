require 'test_helper'

class RestaurantTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  setup do
    @restaurant = FactoryGirl.create :restaurant
  end

  test "two restaurants exist" do
    FactoryGirl.create :restaurant
    assert_equal 2, Restaurant.all.length
  end

end
