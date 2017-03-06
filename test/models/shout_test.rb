require 'test_helper'

class ShoutTest < ActiveSupport::TestCase

  test "shout can be made" do
    FactoryGirl.create :shout
    assert_equal 1, Shout.all.count
  end
end
