class Agent < ActiveRecord::Base
  has_many :listings
  mount_uploader :avatar, AvatarUploader

  def to_s 
    return "#{first_name} #{last_name}"
  end
end
