class Image < ActiveRecord::Base
  belongs_to :listing
  mount_uploader :image_file, ImageUploader
  process_in_background :image_file
  scope :by_position, -> { order("position ASC") }
  default_scope { by_position }
end
