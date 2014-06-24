# == Schema Information
#
# Table name: images
#
#  id                    :integer          not null, primary key
#  image_file            :string(255)
#  created_at            :datetime
#  updated_at            :datetime
#  listing_id            :integer
#  position              :integer
#  image_file_processing :boolean
#

class Image < ActiveRecord::Base
  belongs_to :listing
  mount_uploader :image_file, ImageUploader
  process_in_background :image_file
  scope :by_position, -> { order("position ASC") }
  default_scope { by_position }
end
