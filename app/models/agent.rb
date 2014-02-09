class Agent < ActiveRecord::Base
  has_many :listings, dependent: :destroy
  has_many :inquiries, dependent: :destroy
  mount_uploader :avatar, AvatarUploader

  def to_s 
    return "#{first_name} #{last_name}"
  end
end
