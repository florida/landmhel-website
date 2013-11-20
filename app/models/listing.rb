class Listing < ActiveRecord::Base
  has_many :images, foreign_key: :listing_id, dependent: :destroy
  belongs_to :agent

  accepts_nested_attributes_for :images

  scope :sold, -> { where(sold: true) }
  scope :featured, -> { where(featured: true) }
  scope :active, -> { where(sold: false) }

  geocoded_by :full_address
  after_validation :geocode, :if => :address_changed?

  def to_s 
    address
  end

  def full_address
    "#{address}, #{city}, #{province}"
  end
end
