class Agent < ActiveRecord::Base
  has_many :listings, dependent: :destroy
  has_many :inquiries, dependent: :destroy
  mount_uploader :avatar, AvatarUploader
  process_in_background :avatar
  def to_s 
    return "#{first_name} #{last_name}"
  end
end
