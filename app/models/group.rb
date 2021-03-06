class Group < ActiveRecord::Base

  has_many :group_memberships
  has_many :members, through: :group_memberships

  has_many :group_images, dependent: :destroy
  has_many :images, through: :group_images

  has_many :likes, as: :likable

  validates :name, presence: true

  def add_member user
    members << user
  end  
  
end