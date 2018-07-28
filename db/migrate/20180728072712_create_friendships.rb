class CreateFriendships < ActiveRecord::Migration[5.2]
  def change
    create_table :friendships do |t|
      t.references :friender
      t.references :friended
      t.boolean    :accepted

      t.timestamps
    end
  end
end
