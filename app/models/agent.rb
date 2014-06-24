# == Schema Information
#
# Table name: agents
#
#  id                :integer          not null, primary key
#  first_name        :string(255)
#  last_name         :string(255)
#  phone             :integer
#  email             :string(255)
#  description       :text
#  created_at        :datetime
#  updated_at        :datetime
#  avatar            :string(255)
#  facebook_url      :string(255)
#  twitter_url       :string(255)
#  linkedin_url      :string(255)
#  website_url       :string(255)
#  avatar_processing :boolean
#

class Agent < ActiveRecord::Base
  has_many :listings, dependent: :destroy
  has_many :inquiries, dependent: :destroy
  mount_uploader :avatar, AvatarUploader
  process_in_background :avatar
  def to_s
    return "#{first_name} #{last_name}"
  end
end
