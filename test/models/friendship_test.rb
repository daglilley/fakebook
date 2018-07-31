require 'test_helper'

class FriendshipTest < ActiveSupport::TestCase
  
  def setup
    @friendship = Friendship.new(friender: users(:marth),
                                 friended: users(:alm))
  end
  
  test "should be valid" do
    assert @friendship.valid?
  end
  
  test "should require a friender" do
    @friendship.friender = nil
    assert_not @friendship.valid?
  end
  
  test "should require a friended" do
    @friendship.friended = nil
    assert_not @friendship.valid?
  end
  
end
