class Friendship < ApplicationRecord
  
  belongs_to :friender, class_name: 'User'
  belongs_to :friended, class_name: 'User'
  
  validates :friender, presence: true
  validates :friended, presence: true
  
end
