class AddUniqueIndexToFriendships < ActiveRecord::Migration[5.2]
  def change
    add_index :friendships, [:friender_id, :friended_id], unique: true
  end
end
