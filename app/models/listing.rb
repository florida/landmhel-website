class Listing < ActiveRecord::Base
  has_many :images, foreign_key: :listing_id, dependent: :destroy
  accepts_nested_attributes_for :images

  def to_s 
    return address;
  end
end
