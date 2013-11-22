class Image < ActiveRecord::Base
  belongs_to :listing
  mount_uploader :image_file, ImageUploader
  scope :by_position, order("position ASC")
  default_scope by_position
end
