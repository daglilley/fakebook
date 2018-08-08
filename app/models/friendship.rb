class Friendship < ApplicationRecord
  
  belongs_to :friender, class_name: 'User'
  belongs_to :friended, class_name: 'User'
  
  validates :friender, presence: true, uniqueness: { scope: :friended }
  validates :friended, presence: true
  
  #after_create: :mirror
  # --> after confirming?
  
  def mirror
    unless Friendship.find_by(friender: self.friended,
                              friended: self.friender)
      Friendship.create(friender: self.friended,
                        friended: self.friender)
    end
  end
  
  
end
