require 'test_helper'

class FriendshipTest < ActiveSupport::TestCase
  
  def setup
    @marth_alm = Friendship.new(friender: users(:marth),
                                friended: users(:alm))
  end
  
end
