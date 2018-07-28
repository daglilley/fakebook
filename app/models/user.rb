class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  has_many :friendedships, class_name:  'Friendship',
                           foreign_key: :friender_id,
                           dependent:   :destroy
  has_many :frienderships, class_name:  'Friendship',
                           foreign_key: :friended_id,
                           dependent:   :destroy
                             
  has_many :friendeds, through: :friendedships,
                       source:  :friended
  has_many :frienders, through: :frienderships,
                       source:  :friender
  
  def request_friendship(user)
  end
  
  def accept_friendship(user)
  end
  
  def retract_friendship(user)
  end
  
  def reject_friendship(user)
  end
  
  def delete_friendship(user)
  end
  
  def friended?(user)
  end
  
  def friender?(user)
  end
  
  def friends?(user)
  end
  
  def friends
  end
  
end
